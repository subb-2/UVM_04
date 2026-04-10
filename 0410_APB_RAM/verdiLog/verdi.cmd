simSetSimulator "-vcssv" -exec "simv" -args \
           "+UVM_VERBOSITY=UVM_DEBUG +ntb_random_seed=1234 +UVM_TESTNAME=apb_write_read_test -cm line+cond+fsm+tgl+branch+assert -cm_dir coverage.vdb -cm_name sim1"
debImport "-covdir" "coverage.vdb" "-dbdir" "simv.daidir"
debLoadSimResult /home/hedu07/KSB/0410_APB_RAM/novas.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave2
verdiWindowResize -win $_Verdi_1 "200" "506" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcTBInvokeSim
verdiSetActWin -win $_InteractiveConsole_3
verdiSetActWin -dock widgetDock_<Member>
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
srcHBDrag -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
wvDumpScope "tb_apb.vif"
wvSetPosition -win $_nWave2 {("vif(apb_if)" 0)}
wvRenameGroup -win $_nWave2 {G1} {vif(apb_if)}
wvAddSignal -win $_nWave2 "/tb_apb/vif/pclk" "/tb_apb/vif/presetn" \
           "/tb_apb/vif/paddr\[7:0\]" "/tb_apb/vif/pwrite" \
           "/tb_apb/vif/penable" "/tb_apb/vif/pwdata\[31:0\]" \
           "/tb_apb/vif/psel" "/tb_apb/vif/prdata\[31:0\]" \
           "/tb_apb/vif/pready"
wvSetPosition -win $_nWave2 {("vif(apb_if)" 0)}
wvSetPosition -win $_nWave2 {("vif(apb_if)" 9)}
wvSetPosition -win $_nWave2 {("vif(apb_if)" 9)}
wvSetPosition -win $_nWave2 {("G2" 0)}
srcTBChkPnt -add -label "uvm_pkg"
srcTBRunSim
wvZoomAll -win $_nWave2
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 56962.006579 -snap {("vif(apb_if)" 6)}
wvSetCursor -win $_nWave2 55274.243421 -snap {("vif(apb_if)" 5)}
wvSetCursor -win $_nWave2 45569.605263 -snap {("vif(apb_if)" 4)}
wvSetCursor -win $_nWave2 54430.361842 -snap {("vif(apb_if)" 5)}
wvSetCursor -win $_nWave2 54430.361842 -snap {("vif(apb_if)" 6)}
wvSetCursor -win $_nWave2 65822.763158 -snap {("vif(apb_if)" 7)}
wvSetCursor -win $_nWave2 77637.105263 -snap {("vif(apb_if)" 5)}
wvSetCursor -win $_nWave2 85653.980263 -snap {("vif(apb_if)" 6)}
wvSetCursor -win $_nWave2 92405.032895 -snap {("vif(apb_if)" 6)}
wvSetCursor -win $_nWave2 92405.032895 -snap {("vif(apb_if)" 6)}
wvSetCursor -win $_nWave2 87341.743421 -snap {("vif(apb_if)" 6)}
wvSetCursor -win $_nWave2 85653.980263 -snap {("vif(apb_if)" 5)}
wvSetCursor -win $_nWave2 66666.644737 -snap {("vif(apb_if)" 8)}
wvSetCursor -win $_nWave2 74261.578947 -snap {("vif(apb_if)" 8)}
wvSetCursor -win $_nWave2 74683.519737 -snap {("vif(apb_if)" 7)}
wvSetCursor -win $_nWave2 44725.723684 -snap {("vif(apb_if)" 4)}
wvSelectSignal -win $_nWave2 {( "vif(apb_if)" 4 )} 
verdiDockWidgetSetCurTab -dock windowDock_InteractiveConsole_3
verdiSetActWin -win $_InteractiveConsole_3
set vgifActionLineNum 118
set vgifActionWindow $_InteractiveConsole_3
set vgifActionTabIndex 1
set vgifActionLineStr {UVM_INFO ./tb/apb_ram_sequence.sv(31) @ 65000: uvm_test_top.env.agt.sqr@@seq [apb_write_read_seq] do_write() write ?? ??: addr = 0x00 data = 0xeac758a3}
set vgifActionFileName {/home/hedu07/KSB/0410_APB_RAM/verdiLog/novas_sim_kccisynop2_3579381.log}

namespace eval ::vgif {
variable Obj_Name {uvm_test_top.env.agt.sqr};
viaSetupL1Apps
npi_util_dlog "\[Smart Log\] Select Name: $Obj_Name \n"
set final_name [npi_util_dyn_obj_name $Obj_Name]
npi_util_dlog "\[Smart Log\] Final Name: $final_name \n"
srcTBObjectBrowser -treeSel -select $final_name -force
}
debExit
