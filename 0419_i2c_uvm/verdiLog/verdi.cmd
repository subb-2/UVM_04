simSetSimulator "-vcssv" -exec "simv" -args \
           "+UVM_VERBOSITY=UVM_DEBUG +ntb_random_seed=1234 +UVM_TESTNAME=i2c_full_test -cm line+cond+fsm+tgl+branch+assert -cm_dir coverage.vdb -cm_name sim1"
debImport "-covdir" "coverage.vdb" "-dbdir" "simv.daidir"
debLoadSimResult /home/hedu07/KSB/0419_i2c_uvm/novas.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave2
verdiWindowResize -win $_Verdi_1 "200" "506" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcTBInvokeSim
verdiSetActWin -win $_InteractiveConsole_3
verdiSetActWin -dock widgetDock_<Member>
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
srcHBSelect "tb_i2c.dut" -win $_nTrace1
srcSetScope "tb_i2c.dut" -delim "." -win $_nTrace1
srcHBSelect "tb_i2c.dut" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_i2c.dut.U_I2C_MASTER_TOP" -win $_nTrace1
srcHBDrag -win $_nTrace1
wvDumpScope "tb_i2c.dut.U_I2C_MASTER_TOP"
wvSetPosition -win $_nWave2 {("U_I2C_MASTER_TOP" 0)}
wvRenameGroup -win $_nWave2 {G1} {U_I2C_MASTER_TOP}
wvAddSignal -win $_nWave2 "/tb_i2c/dut/U_I2C_MASTER_TOP/clk" \
           "/tb_i2c/dut/U_I2C_MASTER_TOP/rst" \
           "/tb_i2c/dut/U_I2C_MASTER_TOP/cmd_start" \
           "/tb_i2c/dut/U_I2C_MASTER_TOP/cmd_write" \
           "/tb_i2c/dut/U_I2C_MASTER_TOP/cmd_read" \
           "/tb_i2c/dut/U_I2C_MASTER_TOP/cmd_stop" \
           "/tb_i2c/dut/U_I2C_MASTER_TOP/tx_data\[7:0\]" \
           "/tb_i2c/dut/U_I2C_MASTER_TOP/ack_in" \
           "/tb_i2c/dut/U_I2C_MASTER_TOP/rx_data\[7:0\]" \
           "/tb_i2c/dut/U_I2C_MASTER_TOP/done" \
           "/tb_i2c/dut/U_I2C_MASTER_TOP/ack_out" \
           "/tb_i2c/dut/U_I2C_MASTER_TOP/busy" \
           "/tb_i2c/dut/U_I2C_MASTER_TOP/scl" \
           "/tb_i2c/dut/U_I2C_MASTER_TOP/sda"
wvSetPosition -win $_nWave2 {("U_I2C_MASTER_TOP" 0)}
wvSetPosition -win $_nWave2 {("U_I2C_MASTER_TOP" 14)}
wvSetPosition -win $_nWave2 {("U_I2C_MASTER_TOP" 14)}
srcTBRunSim
wvZoomAll -win $_nWave2
verdiSetActWin -win $_nWave2
srcHBSelect "tb_i2c.dut.U_I2C_SlAVE" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("U_I2C_MASTER_TOP" 4)}
wvSetPosition -win $_nWave2 {("U_I2C_MASTER_TOP" 6)}
wvSetPosition -win $_nWave2 {("U_I2C_MASTER_TOP" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvDumpScope "tb_i2c.dut.U_I2C_SlAVE"
wvSetPosition -win $_nWave2 {("U_I2C_SlAVE" 0)}
wvRenameGroup -win $_nWave2 {G2} {U_I2C_SlAVE}
wvAddSignal -win $_nWave2 "/tb_i2c/dut/U_I2C_SlAVE/clk" \
           "/tb_i2c/dut/U_I2C_SlAVE/rst" \
           "/tb_i2c/dut/U_I2C_SlAVE/tx_data\[7:0\]" \
           "/tb_i2c/dut/U_I2C_SlAVE/rx_data\[7:0\]" \
           "/tb_i2c/dut/U_I2C_SlAVE/done" "/tb_i2c/dut/U_I2C_SlAVE/scl" \
           "/tb_i2c/dut/U_I2C_SlAVE/sda"
wvSetPosition -win $_nWave2 {("U_I2C_SlAVE" 0)}
wvSetPosition -win $_nWave2 {("U_I2C_SlAVE" 7)}
wvSetPosition -win $_nWave2 {("U_I2C_SlAVE" 7)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcTBSimReset
srcTBRunSim
wvZoomAll -win $_nWave2
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 3715542690.836653 -snap {("U_I2C_MASTER_TOP" 9)}
wvSelectSignal -win $_nWave2 {( "U_I2C_MASTER_TOP" 9 )} 
wvSetPosition -win $_nWave2 {("U_I2C_MASTER_TOP" 9)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("U_I2C_MASTER_TOP" 9)}
verdiWindowResize -win $_Verdi_1 "200" "506" "900" "700"
verdiWindowResize -win $_Verdi_1 "720" "507" "900" "751"
verdiWindowResize -win $_Verdi_1 "638" "507" "982" "751"
wvScrollDown -win $_nWave2 4
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "U_I2C_SlAVE" 4 )} 
wvSetCursor -win $_nWave2 180728178.780654 -snap {("U_I2C_SlAVE" 4)}
wvSetCursor -win $_nWave2 230017682.084469 -snap {("U_I2C_MASTER_TOP" 7)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 3213401784.834809 -snap {("U_I2C_SlAVE" 4)}
wvSetCursor -win $_nWave2 3143574988.487739 -snap {("U_I2C_MASTER_TOP" 7)}
wvSetCursor -win $_nWave2 3188757033.182902 -snap {("U_I2C_SlAVE" 0)}
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "U_I2C_MASTER_TOP" 8 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "U_I2C_MASTER_TOP" 7 )} 
wvSelectSignal -win $_nWave2 {( "U_I2C_MASTER_TOP" 8 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "U_I2C_MASTER_TOP" 7 )} 
wvSetPosition -win $_nWave2 {("U_I2C_MASTER_TOP" 7)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("U_I2C_MASTER_TOP" 17)}
wvSelectSignal -win $_nWave2 {( "U_I2C_MASTER_TOP" 7 )} 
wvSelectSignal -win $_nWave2 {( "U_I2C_MASTER_TOP" 7 )} 
wvSetPosition -win $_nWave2 {("U_I2C_MASTER_TOP" 7)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("U_I2C_MASTER_TOP" 7)}
wvSetPosition -win $_nWave2 {("U_I2C_MASTER_TOP" 9)}
wvSelectSignal -win $_nWave2 {( "U_I2C_MASTER_TOP" 8 )} 
wvSelectSignal -win $_nWave2 {( "U_I2C_MASTER_TOP" 8 )} 
wvSelectSignal -win $_nWave2 {( "U_I2C_MASTER_TOP" 8 )} 
wvSelectSignal -win $_nWave2 {( "U_I2C_MASTER_TOP" 8 )} 
wvSelectSignal -win $_nWave2 {( "U_I2C_MASTER_TOP" 8 )} 
wvSelectSignal -win $_nWave2 {( "U_I2C_MASTER_TOP" 8 )} 
wvSelectSignal -win $_nWave2 {( "U_I2C_MASTER_TOP" 8 )} 
debExit
