simSetSimulator "-vcssv" -exec "./simv" -args
debImport "-dbdir" "./simv.daidir"
debLoadSimResult /home/hedu07/KSB/0402_adder/wave.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave2
verdiWindowResize -win $_Verdi_1 "491" "281" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBSelect "tb_adder.dut" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_adder.dut" -win $_nTrace1
srcHBSelect "tb_adder.dut" -win $_nTrace1
srcSetScope "tb_adder.dut" -delim "." -win $_nTrace1
srcHBSelect "tb_adder.dut" -win $_nTrace1
srcHBSelect "tb_adder" -win $_nTrace1
srcSetScope "tb_adder" -delim "." -win $_nTrace1
srcHBSelect "tb_adder" -win $_nTrace1
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("tb_adder" 0)}
wvRenameGroup -win $_nWave2 {G1} {tb_adder}
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("dut" 0)}
wvRenameGroup -win $_nWave2 {tb_adder} {dut}
wvAddSignal -win $_nWave2 "/tb_adder/dut/a\[7:0\]" "/tb_adder/dut/b\[7:0\]" \
           "/tb_adder/dut/y\[7:0\]"
wvSetPosition -win $_nWave2 {("dut" 0)}
wvSetPosition -win $_nWave2 {("dut" 3)}
wvSetPosition -win $_nWave2 {("dut" 3)}
wvSelectSignal -win $_nWave2 {( "dut" 1 2 3 )} 
verdiSetActWin -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSetCursor -win $_nWave2 1905.449516 -snap {("dut" 3)}
wvSetCursor -win $_nWave2 1705.684647 -snap {("G2" 0)}
srcTBInvokeSim
verdiSetActWin -dock widgetDock_<Member>
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
verdiDockWidgetSetCurTab -dock widgetDock_<Local>
verdiSetActWin -dock widgetDock_<Local>
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
verdiSetActWin -dock widgetDock_<Inst._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Member>
verdiSetActWin -dock widgetDock_<Member>
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcTBRunSim
wvZoomIn -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomAll -win $_nWave2
verdiDockWidgetSetCurTab -dock windowDock_OneSearch
verdiSetActWin -win $_OneSearch
verdiDockWidgetSetCurTab -dock windowDock_InteractiveConsole_3
verdiSetActWin -win $_InteractiveConsole_3
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -line 3 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcTBInsertDataTree -win $_nTrace1 -tab 1 -tree "tb_adder.a\[7:0\]"
srcDeselectAll -win $_nTrace1
srcSelect -signal "b" -line 4 -pos 1 -win $_nTrace1
srcTBInsertDataTree -win $_nTrace1 -tab 1 -tree "tb_adder.b\[7:0\]"
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "y" -line 5 -pos 1 -win $_nTrace1
srcTBInsertDataTree -win $_nTrace1 -tab 1 -tree "tb_adder.y\[7:0\]"
srcTBAddBrkPnt -line 13 -file /home/hedu07/KSB/0402_adder/tb_adder.sv
srcSelect -win $_nTrace1 -range {14 14 1 5 1 1}
srcTBAddBrkPnt -line 14 -file /home/hedu07/KSB/0402_adder/tb_adder.sv
srcSelect -win $_nTrace1 -range {14 14 1 5 1 1}
srcTBAddBrkPnt -line 14 -file /home/hedu07/KSB/0402_adder/tb_adder.sv
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {15 15 1 9 1 1}
srcTBAddBrkPnt -line 15 -file /home/hedu07/KSB/0402_adder/tb_adder.sv
srcSelect -win $_nTrace1 -range {16 16 1 9 1 1}
srcTBAddBrkPnt -line 16 -file /home/hedu07/KSB/0402_adder/tb_adder.sv
srcSelect -win $_nTrace1 -range {15 15 1 9 1 1}
srcTBSetBrkPnt -disable -index 1
srcSelect -win $_nTrace1 -range {16 16 1 9 1 1}
srcTBSetBrkPnt -disable -index 2
srcSelect -win $_nTrace1 -range {15 15 1 9 1 1}
srcTBSetBrkPnt -delete -index 1
srcSelect -win $_nTrace1 -range {15 15 1 9 1 1}
srcTBAddBrkPnt -line 15 -file /home/hedu07/KSB/0402_adder/tb_adder.sv
srcSelect -win $_nTrace1 -range {16 16 1 9 1 1}
srcTBSetBrkPnt -delete -index 2
srcSelect -win $_nTrace1 -range {15 15 1 9 1 1}
srcTBSetBrkPnt -disable -index 3
srcSelect -win $_nTrace1 -range {15 15 1 9 1 1}
srcTBSetBrkPnt -delete -index 3
srcSelect -win $_nTrace1 -range {15 15 1 9 1 1}
srcTBAddBrkPnt -line 15 -file /home/hedu07/KSB/0402_adder/tb_adder.sv
srcTBSimReset
verdiSetActWin -win $_nWave2
srcTBRunSim
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
wvZoomAll -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomAll -win $_nWave2
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
wvZoomAll -win $_nWave2
verdiDockWidgetSetCurTab -dock windowDock_InteractiveConsole_3
verdiSetActWin -win $_InteractiveConsole_3
debExit
