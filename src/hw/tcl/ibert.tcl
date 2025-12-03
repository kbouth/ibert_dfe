##################################################################
# CHECK VIVADO VERSION
##################################################################

set scripts_vivado_version 2022.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
  catch {common::send_msg_id "IPS_TCL-100" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_ip_tcl to create an updated script."}
  return 1
}

##################################################################
# START
##################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source ibert.tcl
# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
  create_project ibert_dfe ibert_dfe -part xczu6eg-ffvb1156-1-e
  set_property target_language VHDL [current_project]
  set_property simulator_language VHDL [current_project]
}

##################################################################
# CHECK IPs
##################################################################

set bCheckIPs 1
set bCheckIPsPassed 1
if { $bCheckIPs == 1 } {
  set list_check_ips { xilinx.com:ip:ibert_ultrascale_gth:1.4 }
  set list_ips_missing ""
  common::send_msg_id "IPS_TCL-1001" "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

  foreach ip_vlnv $list_check_ips {
  set ip_obj [get_ipdefs -all $ip_vlnv]
  if { $ip_obj eq "" } {
    lappend list_ips_missing $ip_vlnv
    }
  }

  if { $list_ips_missing ne "" } {
    catch {common::send_msg_id "IPS_TCL-105" "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
    set bCheckIPsPassed 0
  }
}

if { $bCheckIPsPassed != 1 } {
  common::send_msg_id "IPS_TCL-102" "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 1
}

##################################################################
# CREATE IP ibert
##################################################################

set ibert [create_ip -name ibert_ultrascale_gth -vendor xilinx.com -library ip -version 1.4 -module_name ibert]

# User Parameters
set_property -dict [list \
  CONFIG.C_PROTOCOL_COUNT {1} \
  CONFIG.C_PROTOCOL_MAXLINERATE_1 {2.4984} \
  CONFIG.C_PROTOCOL_MAXLINERATE_2 {5} \
  CONFIG.C_PROTOCOL_PLL_1 {CPLL} \
  CONFIG.C_PROTOCOL_QUAD2 {Custom_1_/_2.4984_Gbps} \
  CONFIG.C_PROTOCOL_QUAD_COUNT_1 {2} \
  CONFIG.C_PROTOCOL_REFCLK_FREQUENCY_1 {312.3} \
  CONFIG.C_REFCLK_SOURCE_QUAD_2 {MGTREFCLK0_128} \
  CONFIG.C_SYSCLK_FREQUENCY {100} \
  CONFIG.C_SYSCLK_IO_PIN_LOC_P {AL6} \
  CONFIG.C_SYSCLK_IO_PIN_STD {LVCMOS18} \
  CONFIG.C_SYSCLOCK_SOURCE_INT {External} \
] [get_ips ibert]

# Runtime Parameters
set_property -dict { 
  GENERATE_SYNTH_CHECKPOINT {1}
} $ibert

##################################################################

