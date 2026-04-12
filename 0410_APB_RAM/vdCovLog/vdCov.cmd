verdiWindowResize -win $_vdCoverage_1 "830" "370" "1015" "709"
gui_set_pref_value -category {coveragesetting} -key {geninfodumping} -value 1
gui_exclusion -set_force true
verdiSetFont  -font  {DejaVu Sans}  -size  11
verdiSetFont -font "DejaVu Sans" -size "11"
gui_assert_mode -mode flat
gui_class_mode -mode hier
gui_excl_mgr_flat_list -on  0
gui_covdetail_select -id  CovDetail.1   -name   Line
verdiWindowWorkMode -win $_vdCoverage_1 -coverageAnalysis
gui_open_cov  -hier coverage.vdb -testdir {} -test {coverage/sim1} -merge MergedTest -db_max_tests 10 -sdc_level 1 -fsm transition
gui_set_pref_value -category {ColumnCfg} -key {covtblAssertList_Assert} -value {true}
gui_set_pref_value -category {ColumnCfg} -key {covtblAssertList_Match} -value {false}
gui_set_pref_value -category {ColumnCfg} -key {covtblAssertList_Success} -value {false}
verdiSetActWin -dock widgetDock_<CovDetail>
verdiWindowResize -win $_vdCoverage_1 "830" "370" "1015" "709"
gui_covtable_show -show  { Function Groups } -id  CoverageTable.1  -test  MergedTest
verdiSetActWin -dock widgetDock_<Summary>
gui_list_select -id CoverageTable.1 -list covtblFGroupsList { {/$unit::apb_coverage::apb_cg}   }
gui_list_expand -id  CoverageTable.1   -list {covtblFGroupsList} {/$unit::apb_coverage::apb_cg}
gui_list_expand -id CoverageTable.1   {/$unit::apb_coverage::apb_cg}
gui_list_action -id  CoverageTable.1 -list {covtblFGroupsList} {/$unit::apb_coverage::apb_cg}  -column {} 
gui_list_select -id CovDetail.1 -list covergroup { {$unit::apb_coverage::apb_cg.cp_addr}  {$unit::apb_coverage::apb_cg.cp_rdata}   } -type { {Cover Group} {Cover Group}  }
verdiSetActWin -dock widgetDock_<CovDetail>
gui_list_select -id CovDetail.1 -list covergroup { {$unit::apb_coverage::apb_cg.cp_rdata}  {$unit::apb_coverage::apb_cg.cp_wdata}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::apb_coverage::apb_cg.cp_wdata}  {$unit::apb_coverage::apb_cg.cp_rdata}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_other   }
gui_list_action -id  CovDetail.1 -list {covergroup detail} all_other
gui_list_select -id CovDetail.1 -list covergroup { {$unit::apb_coverage::apb_cg.cp_rdata}   } -type { {Cover Group}  }
gui_list_action -id  CovDetail.1 -list {covergroup} {$unit::apb_coverage::apb_cg.cp_rdata}  -type {Cover Group}
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_other   }
gui_list_action -id  CovDetail.1 -list {covergroup detail} all_other
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_other  all_5   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_5  all_a   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_a  all_ones   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_ones  all_zeros   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_zeros  all_ones   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_ones  all_a   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_a  all_5   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_5  all_other   }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::apb_coverage::apb_cg.cp_rdata}   } -type { {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::apb_coverage::apb_cg.cp_rdata}  {$unit::apb_coverage::apb_cg.cp_wdata}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_zeros   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_zeros  all_other   }
gui_list_action -id  CovDetail.1 -list {covergroup detail} all_other
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_other  all_zeros   }
gui_list_action -id  CovDetail.1 -list {covergroup detail} all_zeros
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_zeros  all_other   }
gui_list_action -id  CovDetail.1 -list {covergroup detail} all_other
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_other  all_zeros   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_zeros  all_other   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_other  all_zeros   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_zeros  all_other   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_other  all_zeros   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_zeros  all_other   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_other  all_zeros   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_zeros  all_other   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_zeros   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_other  all_zeros   }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::apb_coverage::apb_cg.cp_wdata}  {$unit::apb_coverage::apb_cg.cp_rdata}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::apb_coverage::apb_cg.cp_rdata}  {$unit::apb_coverage::apb_cg.cp_wdata}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::apb_coverage::apb_cg.cp_wdata}  {$unit::apb_coverage::apb_cg.cp_rdata}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::apb_coverage::apb_cg.cp_rdata}  {$unit::apb_coverage::apb_cg.cp_wdata}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::apb_coverage::apb_cg.cp_wdata}  {$unit::apb_coverage::apb_cg.cp_rdata}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_other  all_zeros  all_ones  all_a   }
gui_list_select -id CovDetail.1 -list {covergroup detail} { all_a  all_ones  all_other  all_zeros   }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::apb_coverage::apb_cg.cp_rdata}  {$unit::apb_coverage::apb_cg.cp_wdata}   } -type { {Cover Group} {Cover Group}  }
vdCovExit -noprompt
