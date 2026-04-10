verdiSetActWin -dock widgetDock_<Watch>
simSetSimulator "-vcssv" -exec "simv" -args \
           "+UVM_VERBOSITY=UVM_HIGH +ntb_random_seed=1234 +UVM_TESTNAME=ram_full_sweep_test -cm line+cond+fsm+tgl+branch+assert -cm_dir coverage.vdb -cm_name sim1 +UVM_TESTNAME=ram_write_read_test"
debImport "-dbdir" "simv.daidir"
debLoadSimResult /home/hedu07/KSB/0409_RAM_UVM_HW/novas.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave2
verdiWindowResize -win $_Verdi_1 "220" "247" "1978" "950"
verdiWindowResize -win $_Verdi_1 "220" "247" "1978" "950"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcTBInvokeSim
verdiSetActWin -win $_InteractiveConsole_3
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
srcHBDrag -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
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
wvSetCursor -win $_nWave2 1685459.727113 -snap {("r_if(ram_if)" 3)}
wvScrollDown -win $_nWave2 0
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 3870330.724581 -snap {("r_if(ram_if)" 2)}
verdiDockWidgetSetCurTab -dock windowDock_InteractiveConsole_3
verdiSetActWin -win $_InteractiveConsole_3
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
debExit
