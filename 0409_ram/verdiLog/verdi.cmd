simSetSimulator "-vcssv" -exec "simv" -args \
           "+UVM_VERBOSITY=UVM_HIGH +ntb_random_seed=1234 +UVM_TESTNAME=ram_write_read_test"
debImport "-dbdir" "simv.daidir"
debLoadSimResult /home/hedu07/KSB/0409_ram/novas.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave2
verdiWindowResize -win $_Verdi_1 "200" "506" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcTBInvokeSim
verdiSetActWin -win $_InteractiveConsole_3
verdiSetActWin -dock widgetDock_<Member>
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
srcHBSelect "tb_ram.r_if" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBDrag -win $_nTrace1
wvDumpScope "tb_ram.r_if"
wvSetPosition -win $_nWave2 {("r_if(ram_if)" 0)}
wvRenameGroup -win $_nWave2 {G1} {r_if(ram_if)}
wvAddSignal -win $_nWave2 "/tb_ram/r_if/clk" "/tb_ram/r_if/we" \
           "/tb_ram/r_if/addr\[7:0\]" "/tb_ram/r_if/wdata\[15:0\]" \
           "/tb_ram/r_if/rdata\[15:0\]"
wvSetPosition -win $_nWave2 {("r_if(ram_if)" 0)}
wvSetPosition -win $_nWave2 {("r_if(ram_if)" 5)}
wvSetPosition -win $_nWave2 {("r_if(ram_if)" 5)}
wvSetPosition -win $_nWave2 {("G2" 0)}
srcTBRunSim
wvZoomAll -win $_nWave2
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 31363.157895 -snap {("r_if(ram_if)" 2)}
wvSetCursor -win $_nWave2 25678.585526 -snap {("r_if(ram_if)" 2)}
wvSetCursor -win $_nWave2 11173.125000 -snap {("G2" 0)}
verdiWindowResize -win $_Verdi_1 "200" "506" "900" "700"
verdiWindowResize -win $_Verdi_1 "200" "506" "1285" "837"
verdiWindowResize -win $_Verdi_1 "38" "187" "1285" "943"
verdiWindowResize -win $_Verdi_1 "38" "187" "1332" "943"
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 35337.390762 -snap {("r_if(ram_if)" 2)}
wvSetCursor -win $_nWave2 45752.621723 -snap {("r_if(ram_if)" 5)}
wvSetCursor -win $_nWave2 35709.363296 -snap {("r_if(ram_if)" 1)}
wvSetCursor -win $_nWave2 45380.649189 -snap {("r_if(ram_if)" 5)}
wvSetCursor -win $_nWave2 26038.077403 -snap {("r_if(ram_if)" 2)}
wvSetCursor -win $_nWave2 36453.308365 -snap {("r_if(ram_if)" 2)}
wvSetCursor -win $_nWave2 25666.104869 -snap {("r_if(ram_if)" 2)}
wvSetCursor -win $_nWave2 34965.418227 -snap {("r_if(ram_if)" 2)}
wvSetCursor -win $_nWave2 24178.214732 -snap {("r_if(ram_if)" 2)}
wvSetCursor -win $_nWave2 29757.802747 -snap {("r_if(ram_if)" 2)}
wvSetCursor -win $_nWave2 34965.418227 -snap {("r_if(ram_if)" 2)}
wvSetCursor -win $_nWave2 46124.594257 -snap {("r_if(ram_if)" 2)}
wvSetCursor -win $_nWave2 45380.649189 -snap {("r_if(ram_if)" 1)}
verdiInvokeApp -vdCov
verdiDockWidgetSetCurTab -dock widgetDock_<Object._Tree>
verdiSetActWin -dock widgetDock_<Object._Tree>
srcTBObjectBrowser -treeSel -select "uvm_custom_install_verdi_recording"
srcTBObjectBrowser -treeExpand "uvm_custom_install_verdi_recording"
srcTBObjectBrowser -treeCollapse "uvm_custom_install_verdi_recording"
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_ram.dut" -win $_nTrace1
srcHBSelect "tb_ram.dut" -win $_nTrace1
srcSetScope "tb_ram.dut" -delim "." -win $_nTrace1
srcHBSelect "tb_ram.dut" -win $_nTrace1
srcHBSelect "tb_ram.r_if" -win $_nTrace1
srcSetScope "tb_ram.r_if" -delim "." -win $_nTrace1
srcHBSelect "tb_ram.r_if" -win $_nTrace1
srcHBSelect "tb_ram.r_if.drv_cb" -win $_nTrace1
srcHBSelect "tb_ram.r_if.mon_cb" -win $_nTrace1
srcHBSelect "tb_ram.r_if.drv_cb" -win $_nTrace1
srcSetScope "tb_ram.r_if.drv_cb" -delim "." -win $_nTrace1
srcHBSelect "tb_ram.r_if.drv_cb" -win $_nTrace1
srcHBSelect "tb_ram.r_if.drv_cb" -win $_nTrace1
srcHBSelect "tb_ram.r_if.mon_cb" -win $_nTrace1
srcSetScope "tb_ram.r_if.mon_cb" -delim "." -win $_nTrace1
srcHBSelect "tb_ram.r_if.mon_cb" -win $_nTrace1
srcHBSelect "tb_ram.r_if.drv_cb" -win $_nTrace1
srcHBSelect "tb_ram.r_if" -win $_nTrace1
srcSetScope "tb_ram.r_if" -delim "." -win $_nTrace1
srcHBSelect "tb_ram.r_if" -win $_nTrace1
srcHBSelect "tb_ram" -win $_nTrace1
srcHBSelect "tb_ram" -win $_nTrace1
srcHBSelect "tb_ram" -win $_nTrace1
srcSetScope "tb_ram" -delim "." -win $_nTrace1
srcHBSelect "tb_ram" -win $_nTrace1
srcHBSelect "uvm_custom_install_verdi_recording" -win $_nTrace1
verdiDockWidgetSetCurTab -dock widgetDock_<Stack>
verdiSetActWin -dock widgetDock_<Stack>
srcTBStackBrowser -select "tb_ram@0.tb_ram@25.run_test@25" -active
verdiDockWidgetSetCurTab -dock widgetDock_<Class._Tree>
verdiSetActWin -dock widgetDock_<Class._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Stack>
verdiSetActWin -dock widgetDock_<Stack>
srcTBDVSelect -tab 0 -range {0-0} 
verdiSetActWin -dock widgetDock_<Local>
srcTBDVExpand -win $_nTrace1 -tab 0 -item {1} -level 1
srcTBDVCollapse -win $_nTrace1 -tab 0 -item {1} -level 1
srcTBDVExpand -win $_nTrace1 -tab 0 -item {1} -level 1
srcTBDVSelect -tab 0 -range {0 1-1} 
srcTBDVShowDefine -win $_nTrace1 -tab 0
srcTBDVDC -win $_nTrace1 -tab 0
srcTBDVExpand -win $_nTrace1 -tab 0 -item {1 1} -level 1
srcTBDVCollapse -win $_nTrace1 -tab 0 -item {1 1} -level 1
srcTBDVExpand -win $_nTrace1 -tab 0 -item {1 1} -level 1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 122 -pos 5 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcTBDVSelect -tab 0 -range {0 1 1-1} 
srcTBDVShowDefine -win $_nTrace1 -tab 0
srcTBDVDC -win $_nTrace1 -tab 0
verdiSetActWin -dock widgetDock_<Local>
srcTBDVSelect -tab 0 -range {0 1 3-3} 
srcTBDVShowDefine -win $_nTrace1 -tab 0
srcTBDVDC -win $_nTrace1 -tab 0
srcTBDVSelect -tab 0 -range {0 1 5-5} 
srcTBDVShowDefine -win $_nTrace1 -tab 0
srcTBDVDC -win $_nTrace1 -tab 0
srcTBDVExpand -win $_nTrace1 -tab 0 -item {1 1 5} -level 1
srcTBDVCollapse -win $_nTrace1 -tab 0 -item {1 1 5} -level 1
srcTBDVCollapse -win $_nTrace1 -tab 0 -item {1 1} -level 1
srcTBDVCollapse -win $_nTrace1 -tab 0 -item {1} -level 1
srcTBStackBrowser -select "tb_ram@0.tb_ram@25" -active
srcTBShowSourceCode -win $_nTrace1 -file "./tb/tb_ram.sv" -line 35 -frameId \
           "25:0:3"
srcSelect -win $_nTrace1 -range {35 35 1 6 1 1}
srcTBStackBrowser -active -activate "tb_ram@0.tb_ram@25"
verdiSetActWin -dock widgetDock_<Stack>
srcTBStackBrowser -select "tb_ram@0.tb_ram@25.run_test@25" -active
srcTBStackBrowser -select "tb_ram@0.tb_ram@25.run_test@25.uvm_root::run_test@25" \
           -active
srcTBShowSourceCode -win $_nTrace1 -file \
           "/tools/synopsys/vcs/W-2024.09-SP1/etc/uvm-1.2/base/uvm_root.svh" \
           -line 527 -frameId "25:71:3145"
srcSelect -win $_nTrace1 -range {527 527 1 4 1 1}
srcTBStackBrowser -active -activate \
           "tb_ram@0.tb_ram@25.run_test@25.uvm_root::run_test@25"
srcTBStackBrowser -select "tb_ram@0.tb_ram@25.run_test@25" -active
srcTBStackBrowser -select "tb_ram@0" -active
srcTBShowSourceCode -win $_nTrace1 -file "./tb/tb_ram.sv" -line 17 -frameId \
           "tb_ram"
srcSelect -win $_nTrace1 -range {17 17 1 8 1 1}
srcTBStackBrowser -active -activate "tb_ram@0"
srcTBStackBrowser -select "tb_ram@0.tb_ram@25.run_test@25.uvm_root::run_test@25" \
           -active
srcTBShowSourceCode -win $_nTrace1 -file \
           "/tools/synopsys/vcs/W-2024.09-SP1/etc/uvm-1.2/base/uvm_root.svh" \
           -line 527 -frameId "25:71:3145"
srcSelect -win $_nTrace1 -range {527 527 1 4 1 1}
srcTBStackBrowser -active -activate \
           "tb_ram@0.tb_ram@25.run_test@25.uvm_root::run_test@25"
srcDeselectAll -win $_nTrace1
srcSelect -signal "finish_on_completion" -line 526 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcTBStackBrowser -select "tb_ram@0.tb_ram@25.run_test@25" -active
verdiSetActWin -dock widgetDock_<Stack>
srcTBShowSourceCode -win $_nTrace1 -file \
           "/tools/synopsys/vcs/W-2024.09-SP1/etc/uvm-1.2/base/uvm_globals.svh" \
           -line 49 -frameId "25:66:3191"
srcSelect -win $_nTrace1 -range {49 49 1 7 1 1}
srcTBStackBrowser -active -activate "tb_ram@0.tb_ram@25.run_test@25"
wvSetCursor -win $_nWave2 49472.347066 -snap {("r_if(ram_if)" 5)}
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 52820.099875 -snap {("r_if(ram_if)" 5)}
wvSetCursor -win $_nWave2 55795.880150 -snap {("r_if(ram_if)" 4)}
verdiDockWidgetSetCurTab -dock windowDock_InteractiveConsole_3
verdiSetActWin -win $_InteractiveConsole_3
