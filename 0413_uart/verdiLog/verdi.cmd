simSetSimulator "-vcssv" -exec "simv" -args \
           "+UVM_VERBOSITY=UVM_DEBUG +ntb_random_seed=1234 -cm line+cond+fsm+tgl+branch+assert -cm_dir coverage.vdb -cm_name sim1"
debImport "-dbdir" "simv.daidir"
debLoadSimResult /home/hedu07/KSB/0413_uart/novas.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave2
verdiWindowResize -win $_Verdi_1 "305" "165" "1496" "1102"
verdiWindowResize -win $_Verdi_1 "305" "165" "1496" "1102"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_uart.dut" -win $_nTrace1
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("dut" 0)}
wvRenameGroup -win $_nWave2 {G1} {dut}
wvAddSignal -win $_nWave2 "/tb_uart/dut/clk" "/tb_uart/dut/rst" \
           "/tb_uart/dut/tx_data\[7:0\]" "/tb_uart/dut/tx_start" \
           "/tb_uart/dut/tx" "/tb_uart/dut/tx_busy" "/tb_uart/dut/rx" \
           "/tb_uart/dut/rx_data\[7:0\]" "/tb_uart/dut/rx_valid"
wvSetPosition -win $_nWave2 {("dut" 0)}
wvSetPosition -win $_nWave2 {("dut" 9)}
wvSetPosition -win $_nWave2 {("dut" 9)}
verdiSetActWin -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 60949.108746 -snap {("dut" 4)}
wvSetCursor -win $_nWave2 64064.718139 -snap {("dut" 4)}
wvSetCursor -win $_nWave2 66206.699596 -snap {("dut" 4)}
