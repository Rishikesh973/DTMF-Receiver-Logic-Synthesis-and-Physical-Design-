# ####################################################################

#  Created by Genus(TM) Synthesis Solution 17.22-s017_1 on Thu Nov 23 10:45:29 IST 2023

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design dtmf_recvr_core

set_case_analysis 0 [get_ports test_mode]
set_case_analysis 0 [get_ports scan_en]
create_clock -name "refclk" -period 8.0 -waveform {0.0 4.0} [get_ports refclk]
create_clock -name "m_clk" -period 8.0 -waveform {0.0 4.0} [get_pins TEST_CONTROL_INST/m_clk]
create_clock -name "m_rcc_clk" -period 16.0 -waveform {0.0 8.0} [get_pins TEST_CONTROL_INST/m_rcc_clk]
create_clock -name "m_spi_clk" -period 16.0 -waveform {0.0 8.0} [get_pins TEST_CONTROL_INST/m_spi_clk]
create_clock -name "m_dsram_clk" -period 16.0 -waveform {0.0 8.0} [get_pins TEST_CONTROL_INST/m_dsram_clk]
create_clock -name "m_ram_clk" -period 16.0 -waveform {0.0 8.0} [get_pins TEST_CONTROL_INST/m_ram_clk]
create_clock -name "m_digit_clk" -period 16.0 -waveform {0.0 8.0} [get_pins TEST_CONTROL_INST/m_digit_clk]
set_false_path -from [list \
  [get_ports reset]  \
  [get_ports test_mode] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports ibias]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports pllrst]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports spi_fs]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports spi_data]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports test_mode]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports scan_clk]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports scan_en]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[0]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[1]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[2]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[3]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[4]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[5]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[6]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[7]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[8]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[9]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[10]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[11]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[12]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[13]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[14]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[15]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports int]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports reset]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports vcom]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports vcop]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[0]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[1]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[2]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[3]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[4]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[5]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[6]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[7]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[8]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[9]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[10]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[11]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[12]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[13]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[14]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[15]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports tdigit_flag]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {tdigit[0]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {tdigit[1]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {tdigit[2]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {tdigit[3]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {tdigit[4]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {tdigit[5]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {tdigit[6]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {tdigit[7]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports ibias]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports pllrst]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports spi_fs]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports spi_data]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports test_mode]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports scan_clk]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports scan_en]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[0]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[1]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[2]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[3]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[4]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[5]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[6]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[7]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[8]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[9]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[10]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[11]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[12]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[13]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[14]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[15]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports int]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports reset]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports vcom]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports vcop]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[0]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[1]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[2]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[3]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[4]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[5]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[6]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[7]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[8]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[9]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[10]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[11]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[12]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[13]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[14]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[15]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports tdigit_flag]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {tdigit[0]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {tdigit[1]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {tdigit[2]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {tdigit[3]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {tdigit[4]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {tdigit[5]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {tdigit[6]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {tdigit[7]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports ibias]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports pllrst]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports spi_fs]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports spi_data]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports test_mode]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports scan_clk]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports scan_en]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[0]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[1]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[2]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[3]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[4]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[5]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[6]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[7]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[8]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[9]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[10]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[11]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[12]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[13]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[14]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[15]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports int]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports reset]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports vcom]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports vcop]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[0]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[1]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[2]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[3]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[4]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[5]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[6]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[7]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[8]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[9]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[10]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[11]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[12]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[13]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[14]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[15]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports tdigit_flag]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {tdigit[0]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {tdigit[1]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {tdigit[2]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {tdigit[3]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {tdigit[4]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {tdigit[5]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {tdigit[6]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {tdigit[7]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports ibias]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports pllrst]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports spi_fs]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports spi_data]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports test_mode]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports scan_clk]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports scan_en]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[0]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[1]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[2]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[3]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[4]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[5]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[6]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[7]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[8]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[9]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[10]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[11]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[12]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[13]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[14]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[15]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports int]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports reset]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports vcom]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports vcop]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[0]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[1]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[2]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[3]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[4]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[5]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[6]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[7]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[8]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[9]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[10]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[11]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[12]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[13]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[14]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[15]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports tdigit_flag]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {tdigit[0]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {tdigit[1]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {tdigit[2]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {tdigit[3]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {tdigit[4]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {tdigit[5]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {tdigit[6]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {tdigit[7]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports ibias]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports pllrst]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports spi_fs]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports spi_data]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports test_mode]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports scan_clk]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports scan_en]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[0]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[1]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[2]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[3]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[4]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[5]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[6]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[7]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[8]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[9]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[10]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[11]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[12]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[13]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[14]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[15]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports int]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports reset]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports vcom]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports vcop]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[0]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[1]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[2]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[3]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[4]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[5]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[6]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[7]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[8]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[9]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[10]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[11]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[12]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[13]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[14]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[15]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports tdigit_flag]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {tdigit[0]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {tdigit[1]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {tdigit[2]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {tdigit[3]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {tdigit[4]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {tdigit[5]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {tdigit[6]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {tdigit[7]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports ibias]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports pllrst]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports spi_fs]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports spi_data]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports test_mode]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports scan_clk]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports scan_en]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[0]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[1]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[2]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[3]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[4]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[5]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[6]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[7]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[8]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[9]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[10]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[11]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[12]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[13]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[14]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[15]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports int]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports reset]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports vcom]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports vcop]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[0]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[1]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[2]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[3]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[4]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[5]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[6]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[7]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[8]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[9]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[10]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[11]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[12]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[13]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[14]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[15]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports tdigit_flag]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {tdigit[0]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {tdigit[1]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {tdigit[2]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {tdigit[3]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {tdigit[4]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {tdigit[5]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {tdigit[6]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {tdigit[7]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports ibias]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports pllrst]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports spi_fs]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports spi_data]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports test_mode]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports scan_clk]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports scan_en]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[0]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[1]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[2]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[3]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[4]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[5]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[6]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[7]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[8]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[9]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[10]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[11]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[12]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[13]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[14]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[15]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports int]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports reset]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports vcom]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports vcop]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[0]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[1]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[2]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[3]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[4]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[5]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[6]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[7]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[8]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[9]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[10]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[11]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[12]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[13]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[14]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[15]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports tdigit_flag]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {tdigit[0]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {tdigit[1]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {tdigit[2]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {tdigit[3]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {tdigit[4]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {tdigit[5]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {tdigit[6]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {tdigit[7]}]
set_max_fanout 15.000 [current_design]
set_max_transition 1.2 [current_design]
set_dont_use [get_lib_cells ss_g_1v08_125c/MXI2DX1M]
set_dont_use [get_lib_cells ss_g_1v08_125c/MXI2DX2M]
set_dont_use [get_lib_cells ss_g_1v08_125c/MXI2DX4M]
set_dont_use [get_lib_cells ss_g_1v08_125c/MXI2DX8M]
set_dont_use [get_lib_cells ss_g_1v08_125c/MXI2DXLM]
set_dont_use [get_lib_cells ss_g_1v08_125c/TIEHIM]
set_dont_use [get_lib_cells ss_g_1v08_125c/TIELOM]
set_dont_use [get_lib_cells ss_hvt_1v08_125c/MXI2DX1MTH]
set_dont_use [get_lib_cells ss_hvt_1v08_125c/MXI2DX2MTH]
set_dont_use [get_lib_cells ss_hvt_1v08_125c/MXI2DX4MTH]
set_dont_use [get_lib_cells ss_hvt_1v08_125c/MXI2DX8MTH]
set_dont_use [get_lib_cells ss_hvt_1v08_125c/MXI2DXLMTH]
set_dont_use [get_lib_cells ss_hvt_1v08_125c/TIEHIMTH]
set_dont_use [get_lib_cells ss_hvt_1v08_125c/TIELOMTH]
set_dont_use [get_lib_cells ram_256x16_slow/ram_256x16A]
set_dont_use [get_lib_cells rom_512x16A_slow/rom_512x16A]
set_dont_use [get_lib_cells pllclk/pllclk]