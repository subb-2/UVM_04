verdiWindowResize -win $_vdCoverage_1 "830" "370" "900" "700"
gui_set_pref_value -category {coveragesetting} -key {geninfodumping} -value 1
gui_exclusion -set_force true
verdiSetFont  -font  {DejaVu Sans}  -size  11
verdiSetFont -font "DejaVu Sans" -size "11"
gui_assert_mode -mode flat
gui_class_mode -mode hier
gui_excl_mgr_flat_list -on  0
gui_covdetail_select -id  CovDetail.1   -name   Line
verdiWindowWorkMode -win $_vdCoverage_1 -coverageAnalysis
verdiSetActWin -dock widgetDock_Message
gui_open_cov  -hier coverage.vdb -testdir {} -test {coverage/sim1} -merge MergedTest -db_max_tests 10 -sdc_level 1 -fsm transition
verdiWindowResize -win $_vdCoverage_1 "830" "370" "1015" "709"
gui_list_select -id CoverageTable.1 -list covtblInstancesList { uvm_pkg   }
verdiSetActWin -dock widgetDock_<Summary>
verdiWindowResize -win $_vdCoverage_1 "137" "434" "1257" "858"
verdiWindowResize -win $_vdCoverage_1 "8" "361" "1259" "859"
gui_list_action -id  CoverageTable.1 -list {covtblInstancesList} uvm_pkg  -column {} 
gui_list_select -id CoverageTable.1 -list covtblInstancesList { uvm_pkg   }
gui_list_select -id CoverageTable.1 -list covtblInstancesList { uvm_pkg   }
gui_list_select -id CoverageTable.1 -list covtblInstancesList { uvm_pkg   }
gui_list_select -id CoverageTable.1 -list covtblInstancesList { uvm_pkg   }
gui_list_action -id  CoverageTable.1 -list {covtblInstancesList} uvm_pkg  -column {} 
gui_list_action -id  CoverageTable.1 -list {covtblInstancesList} uvm_pkg  -column {} 
gui_list_action -id  CoverageTable.1 -list {covtblInstancesList} uvm_pkg  -column {} 
gui_list_action -id  CoverageTable.1 -list {covtblInstancesList} uvm_pkg  -column {} 
gui_list_select -id CoverageTable.1 -list covtblInstancesList { uvm_pkg   }
gui_covtable_show -show  { Function Groups } -id  CoverageTable.1  -test  MergedTest
gui_list_select -id CoverageTable.1 -list covtblFGroupsList { {/$unit::counter_coverage::counter_cg}   }
gui_list_expand -id  CoverageTable.1   -list {covtblFGroupsList} {/$unit::counter_coverage::counter_cg}
gui_list_expand -id CoverageTable.1   {/$unit::counter_coverage::counter_cg}
gui_list_action -id  CoverageTable.1 -list {covtblFGroupsList} {/$unit::counter_coverage::counter_cg}  -column {Group} 
gui_list_select -id CoverageTable.1 -list covtblFGroupsList { {/$unit::counter_coverage::counter_cg}  {$unit::counter_coverage::counter_cg.cx_en_count}   }
gui_list_select -id CoverageTable.1 -list covtblFGroupsList { {$unit::counter_coverage::counter_cg.cx_en_count}  {$unit::counter_coverage::counter_cg.cx_rst_en}   }
verdiSetActWin -dock widgetDock_<CovDetail>
gui_covtable_show -show  { Module List } -id  CoverageTable.1  -test  MergedTest
verdiSetActWin -dock widgetDock_<Summary>
gui_covtable_show -show  { Asserts } -id  CoverageTable.1  -test  MergedTest
gui_list_expand -id  CoverageTable.1   -list {covtblStatAssertInstList} Assertion
gui_list_expand -id  CoverageTable.1   -list {covtblStatAssertInstList} {Cover Property}
gui_list_expand -id  CoverageTable.1   -list {covtblStatAssertInstList} {Cover Sequence}
gui_list_expand -id  CoverageTable.1   -list {covtblStatAssertInstList} Total
gui_covtable_show -show  { Statistics } -id  CoverageTable.1  -test  MergedTest
gui_list_expand -id  CoverageTable.1   -list {covtblStatModuleList} Assert
gui_list_expand -id  CoverageTable.1   -list {covtblStatAssertDefList} Assertion
gui_list_expand -id  CoverageTable.1   -list {covtblStatAssertDefList} {Cover Property}
gui_list_expand -id  CoverageTable.1   -list {covtblStatAssertDefList} {Cover Sequence}
gui_list_expand -id  CoverageTable.1   -list {covtblStatAssertDefList} Total
gui_covtable_show -show  { Tests } -id  CoverageTable.1  -test  MergedTest
gui_covtable_show -show  { Function Groups } -id  CoverageTable.1  -test  MergedTest
gui_covtable_show -show  { Asserts } -id  CoverageTable.1  -test  MergedTest
gui_covtable_show -show  { Function Groups } -id  CoverageTable.1  -test  MergedTest
gui_covtable_show -show  { Module List } -id  CoverageTable.1  -test  MergedTest
gui_covtable_show -show  { Statistics } -id  CoverageTable.1  -test  MergedTest
gui_covtable_show -show  { Design Hierarchy } -id  CoverageTable.1  -test  MergedTest
gui_covtable_show -show  { Module List } -id  CoverageTable.1  -test  MergedTest
gui_covtable_show -show  { Function Groups } -id  CoverageTable.1  -test  MergedTest
verdiWindowResize -win $_vdCoverage_1 "2" "292" "1396" "859"
gui_covtable_show -show  { Statistics } -id  CoverageTable.1  -test  MergedTest
gui_covtable_show -show  { Tests } -id  CoverageTable.1  -test  MergedTest
gui_list_select -id CoverageTable.1 -list covtblTestSummaryList { coverage/sim1   }
gui_list_action -id  CoverageTable.1 -list {covtblTestSummaryList} coverage/sim1  -column {Test Name/Test Location} 
gui_list_select -id CoverageTable.1 -list covtblTestDetailList { Started  {Host Name}  rss_memory  {Peak Memory}  {random seed}  {User Name}   }
gui_list_select -id CoverageTable.1 -list covtblTestDetailList { Started  {Host Name}  rss_memory  {Peak Memory}  {User Name}   }
gui_covtable_show -show  { Function Groups } -id  CoverageTable.1  -test  MergedTest
gui_list_select -id CovDetail.1 -list {covergroup detail} { high   }
gui_list_action -id  CovDetail.1 -list {covergroup detail} high
verdiSetActWin -dock widgetDock_<CovDetail>
gui_list_select -id CovDetail.1 -list covergroup { {$unit::counter_coverage::counter_cg.cx_en_count}   } -type { {Cover Group}  }
gui_list_action -id  CovDetail.1 -list {covergroup} {$unit::counter_coverage::counter_cg.cx_en_count}  -type {Cover Group}
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{[off],[max , high , low]}}   }
gui_list_action -id  CovDetail.1 -list {covergroup detail} {{[off],[max , high , low]}}
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{[off],[max , high , low]}}  {{[on],[max]}}   }
gui_list_action -id  CovDetail.1 -list {covergroup detail} {{[on],[max]}}
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{[on],[max]}}  {{[off],[max , high , low]}}   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{[off],[max , high , low]}}  {{[on],[max]}}   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{[on],[max]}}  {{off,zero}}   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{off,zero}}  {{[off],[max , high , low]}}   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{[off],[max , high , low]}}  {{on,zero}}   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{on,zero}}  {{off,zero}}   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{off,zero}}  {{on,zero}}   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{on,zero}}  {{on,high}}   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{on,high}}  {{on,low}}   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{on,low}}  {{on,high}}   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{on,high}}  {{on,low}}   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{on,low}}  {{on,high}}   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{on,high}}  {{on,low}}   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{on,low}}  {{on,high}}   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{on,high}}  {{on,zero}}   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{on,zero}}  {{[off],[max , high , low]}}   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{[off],[max , high , low]}}  {{off,zero}}   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{off,zero}}  {{on,zero}}   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{on,zero}}  {{on,high}}   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { {{on,high}}  {{on,low}}   }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::counter_coverage::counter_cg.cx_en_count}  {$unit::counter_coverage::counter_cg.cp_rst_n}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::counter_coverage::counter_cg.cp_rst_n}  {$unit::counter_coverage::counter_cg.cp_enable}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::counter_coverage::counter_cg.cp_enable}  {$unit::counter_coverage::counter_cg.cp_count}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list {covergroup detail} { max   }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::counter_coverage::counter_cg.cp_count}  {$unit::counter_coverage::counter_cg.cx_rst_en}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::counter_coverage::counter_cg.cx_rst_en}  {$unit::counter_coverage::counter_cg.cp_count}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::counter_coverage::counter_cg.cp_count}  {$unit::counter_coverage::counter_cg.cx_rst_en}   } -type { {Cover Group} {Cover Group}  }
vdCovExit -noprompt
