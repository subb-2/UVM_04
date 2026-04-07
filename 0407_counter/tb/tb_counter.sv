`include "uvm_macros.svh"
import uvm_pkg::*;

interface counter_if (
    input logic clk
);
    logic       rst_n;
    logic       enable;
    logic [3:0] count;
endinterface  //counter_if

//uvm component를 상속받겠다.
//이 클래스를 factory에 등록해줘야지
//uvm 동작할 때 동작이 가능함 
class counter_driver extends uvm_component;
    `uvm_component_utils(counter_driver)
    virtual counter_if c_if;

    function new(string name, uvm_component parent);
        //하이라키 출력이 나올 수 있는 이유 
        super.new(name, parent);
    endfunction  //new()

    //모든 component class는 phase를 가지고 있음 
    //build는 interface 만들고, 설정하는 역할 
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        //위의 virtual counter_if c_if; (17)를 읽어서 c_if에 값을 넣겠다.
        //config_db에 저장된 값을 get으로 가져와서 c_if에 저장하는 것 
        //통신이 아니기에 connect가 아니라 build에서 함 
        if (!uvm_config_db#(virtual counter_if)::get(
                this, "", "c_if", c_if
            )) begin
            `uvm_fatal(get_type_name(), "c_if를 찾을 수 없습니다!")
        end
        `uvm_info(get_type_name(), "build_phase 실행 완료.", UVM_HIGH);
    endfunction

    //drv가 dut로 데이터 전송?

    virtual task reset_dut();
        c_if.rst_n  = 0;
        c_if.enable = 0;
        repeat (2) @(posedge c_if.clk);
        c_if.rst_n = 1;
        @(posedge c_if.clk);
        `uvm_info(get_type_name(), "리셋 완료", UVM_HIGH);
    endtask  //reset_dut

    virtual task drive_count(int num_clocks);
        //clock이 들어올 때마다 count
        //en = 1 일 때만, count
        c_if.enable = 1;
        repeat (num_clocks) @(posedge c_if.clk);
        c_if.enable = 0;
        `uvm_info(get_type_name(), $sformatf("drive_count : %0d", num_clocks),
                  UVM_HIGH);
    endtask  //drive_count

    //driver에서 stimulus를 생성해서 넣어주는 형식으로 제작할 것
    virtual task run_phase(uvm_phase phase);
        phase.raise_objection(this);
        // reset 실행 
        reset_dut();
        // 10 clock count 
        drive_count(10);
        // 3 clock count stop, recount 5 clock
        repeat (3) @(posedge c_if.clk);
        drive_count(5);
        //total 15 clock count 
        #20;
        phase.drop_objection(this);
    endtask

    virtual function void report_phase(uvm_phase phase);
        super.report_phase(phase);
    endfunction

endclass  //counter_driver

//받은 값 확인 & 판단 
class counter_monitor extends uvm_component;
    `uvm_component_utils(counter_monitor)
    virtual counter_if c_if;
    //판단을 위한 비교 변수 
    int expected_count;

    function new(string name, uvm_component parent);
        //하이라키 출력이 나올 수 있는 이유 
        super.new(name, parent);
        expected_count = 0;
    endfunction  //new()

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db#(virtual counter_if)::get(
                this, "", "c_if", c_if
            )) begin
            `uvm_fatal(get_type_name(), "c_if를 찾을 수 없습니다!")
        end
        `uvm_info(get_type_name(), "build_phase 실행 완료.", UVM_HIGH);
    endfunction

    virtual task run_phase(uvm_phase phase);
        `uvm_info(get_type_name(), "run phase 실행", UVM_DEBUG);
        //mon도 rst가 아닐 때 count
        @(posedge c_if.rst_n);

        forever begin
            //mon은 계속 확인하고 있는 것
            @(posedge c_if.clk);
            `uvm_info(get_type_name(), "@(posedge c_if.clk) 대기 실행", UVM_DEBUG);
            #1;
            if (!c_if.rst_n) begin
                expected_count = 0;
            end else if (c_if.enable) begin
                //4bit니까 15까지 count 가능 
                expected_count = (expected_count + 1) % 16;
                if (c_if.count != expected_count) begin
                    `uvm_error(get_type_name(),
                               $sformatf(
                                   "불일치! 예상 = %0d, 실제 = %0d",
                                   expected_count, c_if.count))
                end else begin
                    `uvm_info(get_type_name(), $sformatf(
                              "일치! count = %0d", c_if.count), UVM_LOW)
                end
            end
        end
    endtask

    virtual function void report_phase(uvm_phase phase);
        super.report_phase(phase);
    endfunction

endclass  //counter_monitor

//agent가 할 일이 뭐였지..
//그냥 drv, mon build 하는 것 뿐인거 아닌가? 
class counter_agent extends uvm_component;
    `uvm_component_utils(counter_agent)

    counter_driver  drv;
    counter_monitor mon;

    function new(string name, uvm_component parent);
        //하이라키 출력이 나올 수 있는 이유 
        super.new(name, parent);
    endfunction  //new()

    //모든 component class는 phase를 가지고 있음 
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        drv = counter_driver::type_id::create("drv", this);
        `uvm_info(get_type_name(), "drv 생성", UVM_DEBUG);
        mon = counter_monitor::type_id::create("mon", this);
        `uvm_info(get_type_name(), "mon 생성", UVM_DEBUG);
    endfunction

endclass  //counter_agent

class counter_environment extends uvm_component;
    `uvm_component_utils(counter_environment)

    counter_agent agt;

    function new(string name, uvm_component parent);
        //하이라키 출력이 나올 수 있는 이유 
        super.new(name, parent);
        `uvm_info(get_type_name(), "new 실행", UVM_DEBUG);
    endfunction  //new()

    //모든 component class는 phase를 가지고 있음 
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        agt = counter_agent::type_id::create("agt", this);
        `uvm_info(get_type_name(), "agt 생성", UVM_DEBUG);
    endfunction

endclass  //counter_environment

class counter_test extends uvm_test;
    `uvm_component_utils(counter_test)

    counter_environment env;

    function new(string name, uvm_component parent);
        //하이라키 출력이 나올 수 있는 이유 
        super.new(name, parent);
        `uvm_info(get_type_name(), "new 생성", UVM_DEBUG);
    endfunction  //new()

    //모든 component class는 phase를 가지고 있음 
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        env = counter_environment::type_id::create("env", this);
        `uvm_info(get_type_name(), "env 생성", UVM_DEBUG);
    endfunction

    //왜 여기서 report 하는게 맞아?
    virtual function void report_phase(uvm_phase phase);
        //super.report_phase(phase);
        uvm_report_server svr = uvm_report_server::get_server();
        if (svr.get_severity_count(UVM_ERROR) == 0) begin
            `uvm_info(get_type_name(), "===== TEST PASS ! =====", UVM_LOW)
        end else begin
            `uvm_info(get_type_name(), "===== TEST PASS ! =====", UVM_LOW)
        end
    endfunction

endclass  //counter_test

module tb_counter ();
    logic clk;

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    counter_if c_if (clk);

    //counter dut가 인스턴스 이름 
    counter dut (
        .clk(clk),
        .rst_n(c_if.rst_n),
        .enable(c_if.enable),
        .count(c_if.count)
    );

    initial begin
        //interface를 config_db 저장소에 넣기
        //(type), "c_if" : key 값, c_if : 실제 저장되는 값 
        uvm_config_db#(virtual counter_if)::set(null, "*", "c_if", c_if);
        run_test("counter_test");
    end

endmodule
