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
gui_covtable_show -show  { Function Groups } -id  CoverageTable.1  -test  MergedTest
verdiSetActWin -dock widgetDock_<Summary>
gui_list_select -id CoverageTable.1 -list covtblFGroupsList { {/$unit::i2c_coverage_data::cg_monitor}   }
gui_list_expand -id  CoverageTable.1   -list {covtblFGroupsList} {/$unit::i2c_coverage_data::cg_monitor}
gui_list_expand -id CoverageTable.1   {/$unit::i2c_coverage_data::cg_monitor}
gui_list_action -id  CoverageTable.1 -list {covtblFGroupsList} {/$unit::i2c_coverage_data::cg_monitor}  -column {Group} 
gui_list_select -id CoverageTable.1 -list covtblFGroupsList { {/$unit::i2c_coverage_data::cg_monitor}  {/$unit::i2c_coverage_sim::cg_driver}   }
gui_list_expand -id  CoverageTable.1   -list {covtblFGroupsList} {/$unit::i2c_coverage_sim::cg_driver}
gui_list_expand -id CoverageTable.1   {/$unit::i2c_coverage_sim::cg_driver}
gui_list_action -id  CoverageTable.1 -list {covtblFGroupsList} {/$unit::i2c_coverage_sim::cg_driver}  -column {Group} 
gui_list_select -id CoverageTable.1 -list covtblFGroupsList { {/$unit::i2c_coverage_sim::cg_driver}  {/$unit::i2c_coverage_data::cg_monitor}   }
verdiSetActWin -dock widgetDock_<CovDetail>
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cp_m_tx_data}  {$unit::i2c_coverage_sim::cg_driver.cp_rw}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cp_rw}  {$unit::i2c_coverage_sim::cg_driver.cp_s_tx_data}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cp_s_tx_data}   } -type { {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cx_m_tx_rw}   } -type { {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cx_m_tx_rw}   } -type { {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cx_s_tx_rw}   } -type { {Cover Group}  }
gui_list_select -id CoverageTable.1 -list covtblFGroupsList { {/$unit::i2c_coverage_data::cg_monitor}  {/$unit::i2c_coverage_sim::cg_driver}   }
verdiSetActWin -dock widgetDock_<Summary>
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cx_s_tx_rw}  {$unit::i2c_coverage_sim::cg_driver.cp_m_tx_data}   } -type { {Cover Group} {Cover Group}  }
verdiSetActWin -dock widgetDock_<CovDetail>
gui_list_action -id  CoverageTable.1 -list {covtblFGroupsList} {/$unit::i2c_coverage_sim::cg_driver}  -column {Instances} 
verdiSetActWin -dock widgetDock_<Summary>
verdiSetActWin -dock widgetDock_<CovDetail>
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cp_m_tx_data}   } -type { {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cp_rw}   } -type { {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cp_rw}  {$unit::i2c_coverage_sim::cg_driver.cp_s_tx_data}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cp_s_tx_data}  {$unit::i2c_coverage_sim::cg_driver.cx_m_tx_rw}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cx_m_tx_rw}  {$unit::i2c_coverage_sim::cg_driver.cx_s_tx_rw}   } -type { {Cover Group} {Cover Group}  }
verdiSetActWin -dock widgetDock_Message
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cx_s_tx_rw}  {$unit::i2c_coverage_sim::cg_driver.cp_m_tx_data}   } -type { {Cover Group} {Cover Group}  }
verdiSetActWin -dock widgetDock_<CovDetail>
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cp_m_tx_data}  {$unit::i2c_coverage_sim::cg_driver.cp_rw}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cp_rw}  {$unit::i2c_coverage_sim::cg_driver.cp_s_tx_data}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cp_s_tx_data}  {$unit::i2c_coverage_sim::cg_driver.cx_m_tx_rw}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cx_m_tx_rw}  {$unit::i2c_coverage_sim::cg_driver.cx_s_tx_rw}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cx_s_tx_rw}  {$unit::i2c_coverage_sim::cg_driver.cp_s_tx_data}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cp_s_tx_data}  {$unit::i2c_coverage_sim::cg_driver.cp_rw}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cp_rw}  {$unit::i2c_coverage_sim::cg_driver.cx_m_tx_rw}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cx_m_tx_rw}  {$unit::i2c_coverage_sim::cg_driver.cp_s_tx_data}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cp_s_tx_data}  {$unit::i2c_coverage_sim::cg_driver.cp_m_tx_data}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CovDetail.1 -list covergroup { {$unit::i2c_coverage_sim::cg_driver.cp_m_tx_data}  {$unit::i2c_coverage_sim::cg_driver.cp_s_tx_data}   } -type { {Cover Group} {Cover Group}  }
gui_list_select -id CoverageTable.1 -list covtblFGroupsList { {/$unit::i2c_coverage_sim::cg_driver}  {$unit::i2c_coverage_data::cg_monitor.cp_m_rx_data}   }
verdiSetActWin -dock widgetDock_<Summary>
vdCovExit -noprompt
