set SynModuleInfo {
  {SRCNAME wr_data_direct MODELNAME wr_data_direct RTLNAME wr_data_direct IS_TOP 1
    SUBMODULES {
      {MODELNAME wr_data_direct_mac_muladd_12ns_11ns_11ns_22_4_1 RTLNAME wr_data_direct_mac_muladd_12ns_11ns_11ns_22_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME wr_data_direct_Axi_lite_s_axi RTLNAME wr_data_direct_Axi_lite_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME wr_data_direct_regslice_both RTLNAME wr_data_direct_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME wr_data_direct_regslice_both_U}
    }
  }
}
