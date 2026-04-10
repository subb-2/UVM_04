simSetSimulator "-vcssv" -exec "simv" -args \
           "+UVM_VERBOSITY=UVM_HIGH +ntb_random_seed=1234 +UVM_TESTNAME=apb_write_read_test -cm line+cond+fsm+tgl+branch+assert -cm_dir coverage.vdb -cm_name sim1"
debImport "-covdir" "coverage.vdb" "-dbdir" "simv.daidir"
debLoadSimResult /home/hedu07/KSB/0410_APB_RAM/novas.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave2
verdiWindowResize -win $_Verdi_1 "143" "363" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcTBInvokeSim
verdiSetActWin -win $_InteractiveConsole_3
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
srcTBRunSim
verdiWindowResize -win $_Verdi_1 "143" "363" "1399" "946"
wvZoomAll -win $_nWave2
verdiSetActWin -win $_nWave2
verdiInvokeApp -vdCov
verdiInvokeApp -vdCov
verdiInvokeApp -vdCov
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave2 233763.084112 -snap {("vif(apb_if)" 5)}
verdiSetActWin -win $_nWave2
