# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BHT_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BOOT_VECTOR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CORE_ID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "EXTRA_DECODE_STAGE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GSHARE_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEM_CACHE_ADDR_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEM_CACHE_ADDR_MIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEM_DIM_KB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_BHT_ENTRIES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_BHT_ENTRIES_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_BTB_ENTRIES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_BTB_ENTRIES_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_RAS_ENTRIES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_RAS_ENTRIES_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RAS_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SUPPORT_BRANCH_PREDICTION" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SUPPORT_DUAL_ISSUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SUPPORT_ENCRYPTION" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SUPPORT_ENC_UPDATER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SUPPORT_LOAD_BYPASS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SUPPORT_MMU" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SUPPORT_MULDIV" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SUPPORT_MUL_BYPASS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SUPPORT_REGFILE_XILINX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SUPPORT_SUPER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TCM_MEM_BASE" -parent ${Page_0}


}

proc update_PARAM_VALUE.BHT_ENABLE { PARAM_VALUE.BHT_ENABLE } {
	# Procedure called to update BHT_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BHT_ENABLE { PARAM_VALUE.BHT_ENABLE } {
	# Procedure called to validate BHT_ENABLE
	return true
}

proc update_PARAM_VALUE.BOOT_VECTOR { PARAM_VALUE.BOOT_VECTOR } {
	# Procedure called to update BOOT_VECTOR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BOOT_VECTOR { PARAM_VALUE.BOOT_VECTOR } {
	# Procedure called to validate BOOT_VECTOR
	return true
}

proc update_PARAM_VALUE.CORE_ID { PARAM_VALUE.CORE_ID } {
	# Procedure called to update CORE_ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CORE_ID { PARAM_VALUE.CORE_ID } {
	# Procedure called to validate CORE_ID
	return true
}

proc update_PARAM_VALUE.EXTRA_DECODE_STAGE { PARAM_VALUE.EXTRA_DECODE_STAGE } {
	# Procedure called to update EXTRA_DECODE_STAGE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.EXTRA_DECODE_STAGE { PARAM_VALUE.EXTRA_DECODE_STAGE } {
	# Procedure called to validate EXTRA_DECODE_STAGE
	return true
}

proc update_PARAM_VALUE.GSHARE_ENABLE { PARAM_VALUE.GSHARE_ENABLE } {
	# Procedure called to update GSHARE_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GSHARE_ENABLE { PARAM_VALUE.GSHARE_ENABLE } {
	# Procedure called to validate GSHARE_ENABLE
	return true
}

proc update_PARAM_VALUE.MEM_CACHE_ADDR_MAX { PARAM_VALUE.MEM_CACHE_ADDR_MAX } {
	# Procedure called to update MEM_CACHE_ADDR_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEM_CACHE_ADDR_MAX { PARAM_VALUE.MEM_CACHE_ADDR_MAX } {
	# Procedure called to validate MEM_CACHE_ADDR_MAX
	return true
}

proc update_PARAM_VALUE.MEM_CACHE_ADDR_MIN { PARAM_VALUE.MEM_CACHE_ADDR_MIN } {
	# Procedure called to update MEM_CACHE_ADDR_MIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEM_CACHE_ADDR_MIN { PARAM_VALUE.MEM_CACHE_ADDR_MIN } {
	# Procedure called to validate MEM_CACHE_ADDR_MIN
	return true
}

proc update_PARAM_VALUE.MEM_DIM_KB { PARAM_VALUE.MEM_DIM_KB } {
	# Procedure called to update MEM_DIM_KB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEM_DIM_KB { PARAM_VALUE.MEM_DIM_KB } {
	# Procedure called to validate MEM_DIM_KB
	return true
}

proc update_PARAM_VALUE.NUM_BHT_ENTRIES { PARAM_VALUE.NUM_BHT_ENTRIES } {
	# Procedure called to update NUM_BHT_ENTRIES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_BHT_ENTRIES { PARAM_VALUE.NUM_BHT_ENTRIES } {
	# Procedure called to validate NUM_BHT_ENTRIES
	return true
}

proc update_PARAM_VALUE.NUM_BHT_ENTRIES_W { PARAM_VALUE.NUM_BHT_ENTRIES_W } {
	# Procedure called to update NUM_BHT_ENTRIES_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_BHT_ENTRIES_W { PARAM_VALUE.NUM_BHT_ENTRIES_W } {
	# Procedure called to validate NUM_BHT_ENTRIES_W
	return true
}

proc update_PARAM_VALUE.NUM_BTB_ENTRIES { PARAM_VALUE.NUM_BTB_ENTRIES } {
	# Procedure called to update NUM_BTB_ENTRIES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_BTB_ENTRIES { PARAM_VALUE.NUM_BTB_ENTRIES } {
	# Procedure called to validate NUM_BTB_ENTRIES
	return true
}

proc update_PARAM_VALUE.NUM_BTB_ENTRIES_W { PARAM_VALUE.NUM_BTB_ENTRIES_W } {
	# Procedure called to update NUM_BTB_ENTRIES_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_BTB_ENTRIES_W { PARAM_VALUE.NUM_BTB_ENTRIES_W } {
	# Procedure called to validate NUM_BTB_ENTRIES_W
	return true
}

proc update_PARAM_VALUE.NUM_RAS_ENTRIES { PARAM_VALUE.NUM_RAS_ENTRIES } {
	# Procedure called to update NUM_RAS_ENTRIES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_RAS_ENTRIES { PARAM_VALUE.NUM_RAS_ENTRIES } {
	# Procedure called to validate NUM_RAS_ENTRIES
	return true
}

proc update_PARAM_VALUE.NUM_RAS_ENTRIES_W { PARAM_VALUE.NUM_RAS_ENTRIES_W } {
	# Procedure called to update NUM_RAS_ENTRIES_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_RAS_ENTRIES_W { PARAM_VALUE.NUM_RAS_ENTRIES_W } {
	# Procedure called to validate NUM_RAS_ENTRIES_W
	return true
}

proc update_PARAM_VALUE.RAS_ENABLE { PARAM_VALUE.RAS_ENABLE } {
	# Procedure called to update RAS_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RAS_ENABLE { PARAM_VALUE.RAS_ENABLE } {
	# Procedure called to validate RAS_ENABLE
	return true
}

proc update_PARAM_VALUE.SUPPORT_BRANCH_PREDICTION { PARAM_VALUE.SUPPORT_BRANCH_PREDICTION } {
	# Procedure called to update SUPPORT_BRANCH_PREDICTION when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SUPPORT_BRANCH_PREDICTION { PARAM_VALUE.SUPPORT_BRANCH_PREDICTION } {
	# Procedure called to validate SUPPORT_BRANCH_PREDICTION
	return true
}

proc update_PARAM_VALUE.SUPPORT_DUAL_ISSUE { PARAM_VALUE.SUPPORT_DUAL_ISSUE } {
	# Procedure called to update SUPPORT_DUAL_ISSUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SUPPORT_DUAL_ISSUE { PARAM_VALUE.SUPPORT_DUAL_ISSUE } {
	# Procedure called to validate SUPPORT_DUAL_ISSUE
	return true
}

proc update_PARAM_VALUE.SUPPORT_ENCRYPTION { PARAM_VALUE.SUPPORT_ENCRYPTION } {
	# Procedure called to update SUPPORT_ENCRYPTION when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SUPPORT_ENCRYPTION { PARAM_VALUE.SUPPORT_ENCRYPTION } {
	# Procedure called to validate SUPPORT_ENCRYPTION
	return true
}

proc update_PARAM_VALUE.SUPPORT_ENC_UPDATER { PARAM_VALUE.SUPPORT_ENC_UPDATER } {
	# Procedure called to update SUPPORT_ENC_UPDATER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SUPPORT_ENC_UPDATER { PARAM_VALUE.SUPPORT_ENC_UPDATER } {
	# Procedure called to validate SUPPORT_ENC_UPDATER
	return true
}

proc update_PARAM_VALUE.SUPPORT_LOAD_BYPASS { PARAM_VALUE.SUPPORT_LOAD_BYPASS } {
	# Procedure called to update SUPPORT_LOAD_BYPASS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SUPPORT_LOAD_BYPASS { PARAM_VALUE.SUPPORT_LOAD_BYPASS } {
	# Procedure called to validate SUPPORT_LOAD_BYPASS
	return true
}

proc update_PARAM_VALUE.SUPPORT_MMU { PARAM_VALUE.SUPPORT_MMU } {
	# Procedure called to update SUPPORT_MMU when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SUPPORT_MMU { PARAM_VALUE.SUPPORT_MMU } {
	# Procedure called to validate SUPPORT_MMU
	return true
}

proc update_PARAM_VALUE.SUPPORT_MULDIV { PARAM_VALUE.SUPPORT_MULDIV } {
	# Procedure called to update SUPPORT_MULDIV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SUPPORT_MULDIV { PARAM_VALUE.SUPPORT_MULDIV } {
	# Procedure called to validate SUPPORT_MULDIV
	return true
}

proc update_PARAM_VALUE.SUPPORT_MUL_BYPASS { PARAM_VALUE.SUPPORT_MUL_BYPASS } {
	# Procedure called to update SUPPORT_MUL_BYPASS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SUPPORT_MUL_BYPASS { PARAM_VALUE.SUPPORT_MUL_BYPASS } {
	# Procedure called to validate SUPPORT_MUL_BYPASS
	return true
}

proc update_PARAM_VALUE.SUPPORT_REGFILE_XILINX { PARAM_VALUE.SUPPORT_REGFILE_XILINX } {
	# Procedure called to update SUPPORT_REGFILE_XILINX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SUPPORT_REGFILE_XILINX { PARAM_VALUE.SUPPORT_REGFILE_XILINX } {
	# Procedure called to validate SUPPORT_REGFILE_XILINX
	return true
}

proc update_PARAM_VALUE.SUPPORT_SUPER { PARAM_VALUE.SUPPORT_SUPER } {
	# Procedure called to update SUPPORT_SUPER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SUPPORT_SUPER { PARAM_VALUE.SUPPORT_SUPER } {
	# Procedure called to validate SUPPORT_SUPER
	return true
}

proc update_PARAM_VALUE.TCM_MEM_BASE { PARAM_VALUE.TCM_MEM_BASE } {
	# Procedure called to update TCM_MEM_BASE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TCM_MEM_BASE { PARAM_VALUE.TCM_MEM_BASE } {
	# Procedure called to validate TCM_MEM_BASE
	return true
}


proc update_MODELPARAM_VALUE.BOOT_VECTOR { MODELPARAM_VALUE.BOOT_VECTOR PARAM_VALUE.BOOT_VECTOR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BOOT_VECTOR}] ${MODELPARAM_VALUE.BOOT_VECTOR}
}

proc update_MODELPARAM_VALUE.CORE_ID { MODELPARAM_VALUE.CORE_ID PARAM_VALUE.CORE_ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CORE_ID}] ${MODELPARAM_VALUE.CORE_ID}
}

proc update_MODELPARAM_VALUE.TCM_MEM_BASE { MODELPARAM_VALUE.TCM_MEM_BASE PARAM_VALUE.TCM_MEM_BASE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TCM_MEM_BASE}] ${MODELPARAM_VALUE.TCM_MEM_BASE}
}

proc update_MODELPARAM_VALUE.SUPPORT_BRANCH_PREDICTION { MODELPARAM_VALUE.SUPPORT_BRANCH_PREDICTION PARAM_VALUE.SUPPORT_BRANCH_PREDICTION } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SUPPORT_BRANCH_PREDICTION}] ${MODELPARAM_VALUE.SUPPORT_BRANCH_PREDICTION}
}

proc update_MODELPARAM_VALUE.SUPPORT_MULDIV { MODELPARAM_VALUE.SUPPORT_MULDIV PARAM_VALUE.SUPPORT_MULDIV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SUPPORT_MULDIV}] ${MODELPARAM_VALUE.SUPPORT_MULDIV}
}

proc update_MODELPARAM_VALUE.SUPPORT_SUPER { MODELPARAM_VALUE.SUPPORT_SUPER PARAM_VALUE.SUPPORT_SUPER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SUPPORT_SUPER}] ${MODELPARAM_VALUE.SUPPORT_SUPER}
}

proc update_MODELPARAM_VALUE.SUPPORT_MMU { MODELPARAM_VALUE.SUPPORT_MMU PARAM_VALUE.SUPPORT_MMU } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SUPPORT_MMU}] ${MODELPARAM_VALUE.SUPPORT_MMU}
}

proc update_MODELPARAM_VALUE.SUPPORT_DUAL_ISSUE { MODELPARAM_VALUE.SUPPORT_DUAL_ISSUE PARAM_VALUE.SUPPORT_DUAL_ISSUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SUPPORT_DUAL_ISSUE}] ${MODELPARAM_VALUE.SUPPORT_DUAL_ISSUE}
}

proc update_MODELPARAM_VALUE.SUPPORT_LOAD_BYPASS { MODELPARAM_VALUE.SUPPORT_LOAD_BYPASS PARAM_VALUE.SUPPORT_LOAD_BYPASS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SUPPORT_LOAD_BYPASS}] ${MODELPARAM_VALUE.SUPPORT_LOAD_BYPASS}
}

proc update_MODELPARAM_VALUE.SUPPORT_MUL_BYPASS { MODELPARAM_VALUE.SUPPORT_MUL_BYPASS PARAM_VALUE.SUPPORT_MUL_BYPASS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SUPPORT_MUL_BYPASS}] ${MODELPARAM_VALUE.SUPPORT_MUL_BYPASS}
}

proc update_MODELPARAM_VALUE.SUPPORT_REGFILE_XILINX { MODELPARAM_VALUE.SUPPORT_REGFILE_XILINX PARAM_VALUE.SUPPORT_REGFILE_XILINX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SUPPORT_REGFILE_XILINX}] ${MODELPARAM_VALUE.SUPPORT_REGFILE_XILINX}
}

proc update_MODELPARAM_VALUE.EXTRA_DECODE_STAGE { MODELPARAM_VALUE.EXTRA_DECODE_STAGE PARAM_VALUE.EXTRA_DECODE_STAGE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.EXTRA_DECODE_STAGE}] ${MODELPARAM_VALUE.EXTRA_DECODE_STAGE}
}

proc update_MODELPARAM_VALUE.MEM_DIM_KB { MODELPARAM_VALUE.MEM_DIM_KB PARAM_VALUE.MEM_DIM_KB } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEM_DIM_KB}] ${MODELPARAM_VALUE.MEM_DIM_KB}
}

proc update_MODELPARAM_VALUE.MEM_CACHE_ADDR_MIN { MODELPARAM_VALUE.MEM_CACHE_ADDR_MIN PARAM_VALUE.MEM_CACHE_ADDR_MIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEM_CACHE_ADDR_MIN}] ${MODELPARAM_VALUE.MEM_CACHE_ADDR_MIN}
}

proc update_MODELPARAM_VALUE.MEM_CACHE_ADDR_MAX { MODELPARAM_VALUE.MEM_CACHE_ADDR_MAX PARAM_VALUE.MEM_CACHE_ADDR_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEM_CACHE_ADDR_MAX}] ${MODELPARAM_VALUE.MEM_CACHE_ADDR_MAX}
}

proc update_MODELPARAM_VALUE.NUM_BTB_ENTRIES { MODELPARAM_VALUE.NUM_BTB_ENTRIES PARAM_VALUE.NUM_BTB_ENTRIES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_BTB_ENTRIES}] ${MODELPARAM_VALUE.NUM_BTB_ENTRIES}
}

proc update_MODELPARAM_VALUE.NUM_BTB_ENTRIES_W { MODELPARAM_VALUE.NUM_BTB_ENTRIES_W PARAM_VALUE.NUM_BTB_ENTRIES_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_BTB_ENTRIES_W}] ${MODELPARAM_VALUE.NUM_BTB_ENTRIES_W}
}

proc update_MODELPARAM_VALUE.NUM_BHT_ENTRIES { MODELPARAM_VALUE.NUM_BHT_ENTRIES PARAM_VALUE.NUM_BHT_ENTRIES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_BHT_ENTRIES}] ${MODELPARAM_VALUE.NUM_BHT_ENTRIES}
}

proc update_MODELPARAM_VALUE.NUM_BHT_ENTRIES_W { MODELPARAM_VALUE.NUM_BHT_ENTRIES_W PARAM_VALUE.NUM_BHT_ENTRIES_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_BHT_ENTRIES_W}] ${MODELPARAM_VALUE.NUM_BHT_ENTRIES_W}
}

proc update_MODELPARAM_VALUE.RAS_ENABLE { MODELPARAM_VALUE.RAS_ENABLE PARAM_VALUE.RAS_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RAS_ENABLE}] ${MODELPARAM_VALUE.RAS_ENABLE}
}

proc update_MODELPARAM_VALUE.GSHARE_ENABLE { MODELPARAM_VALUE.GSHARE_ENABLE PARAM_VALUE.GSHARE_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GSHARE_ENABLE}] ${MODELPARAM_VALUE.GSHARE_ENABLE}
}

proc update_MODELPARAM_VALUE.BHT_ENABLE { MODELPARAM_VALUE.BHT_ENABLE PARAM_VALUE.BHT_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BHT_ENABLE}] ${MODELPARAM_VALUE.BHT_ENABLE}
}

proc update_MODELPARAM_VALUE.NUM_RAS_ENTRIES { MODELPARAM_VALUE.NUM_RAS_ENTRIES PARAM_VALUE.NUM_RAS_ENTRIES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_RAS_ENTRIES}] ${MODELPARAM_VALUE.NUM_RAS_ENTRIES}
}

proc update_MODELPARAM_VALUE.NUM_RAS_ENTRIES_W { MODELPARAM_VALUE.NUM_RAS_ENTRIES_W PARAM_VALUE.NUM_RAS_ENTRIES_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_RAS_ENTRIES_W}] ${MODELPARAM_VALUE.NUM_RAS_ENTRIES_W}
}

proc update_MODELPARAM_VALUE.SUPPORT_ENCRYPTION { MODELPARAM_VALUE.SUPPORT_ENCRYPTION PARAM_VALUE.SUPPORT_ENCRYPTION } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SUPPORT_ENCRYPTION}] ${MODELPARAM_VALUE.SUPPORT_ENCRYPTION}
}

proc update_MODELPARAM_VALUE.SUPPORT_ENC_UPDATER { MODELPARAM_VALUE.SUPPORT_ENC_UPDATER PARAM_VALUE.SUPPORT_ENC_UPDATER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SUPPORT_ENC_UPDATER}] ${MODELPARAM_VALUE.SUPPORT_ENC_UPDATER}
}

