## 
## Cadence pks_shell "v5.0-b055 (Apr  3 2002 09:30:19)"
## Mon Apr  8 15:01:22 2002
## 
set sdc_version 1.2
current_design DTMF_CHIP
# create_clock [get_pins {DTMF_INST/TEST_CONTROL_INST/i_150/Y}]  -name vclk1 -period 8 -waveform {0 4}
create_clock [get_pins {DTMF_INST/TEST_CONTROL_INST/i_150/Y}]  -name vclk1 -period 7 -waveform {0 3.5}
# create_clock [get_pins {DTMF_INST/TEST_CONTROL_INST/i_156/Y DTMF_INST/TEST_CONTROL_INST/i_154/Y DTMF_INST/TEST_CONTROL_INST/i_152/Y DTMF_INST/TEST_CONTROL_INST/i_160/Y DTMF_INST/TEST_CONTROL_INST/i_158/Y}]  -name vclk2 -period 16 -waveform {0 8}
create_clock [get_pins {DTMF_INST/TEST_CONTROL_INST/i_156/Y DTMF_INST/TEST_CONTROL_INST/i_154/Y DTMF_INST/TEST_CONTROL_INST/i_152/Y DTMF_INST/TEST_CONTROL_INST/i_160/Y DTMF_INST/TEST_CONTROL_INST/i_158/Y}]  -name vclk2 -period 14 -waveform {0 7}
set_case_analysis 0 [get_ports {scan_en}]
set_case_analysis 0 [get_ports {test_mode}]
#set_operating_conditions -max_library pll slow
#set_operating_conditions -library pll typical
#set_operating_conditions -min_library pll fast
set_max_fanout 15 [current_design]
set_max_transition 2.7 [current_design]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {scan_in_1}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_in[6]}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_in[11]}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {int}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_in[4]}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {pllrst}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_in[2]}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {scan_in_2}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_in[0]}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {spi_fs}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {ibias}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {scan_clk}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_in[9]}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_in[14]}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_in[7]}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_in[12]}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_in[5]}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_in[10]}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {reset}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {spi_data}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_in[3]}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_in[1]}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {refclk}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {scan_en}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {test_mode}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_in[15]}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_in[8]}]
set_input_delay 5 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_in[13]}]
set_output_delay 2 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_out[1]}]
set_output_delay 2 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_out[15]}]
set_output_delay 4 -clock [get_clocks {vclk1}] [get_ports {tdigit[0]}]
set_output_delay 2 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_out[13]}]
set_output_delay 2 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_out[11]}]
set_output_delay 2 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_out[8]}]
set_output_delay 4 -clock [get_clocks {vclk1}] [get_ports {tdigit[7]}]
set_output_delay 2 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_out[6]}]
set_output_delay 4 -clock [get_clocks {vclk1}] [get_ports {tdigit[5]}]
set_output_delay 2 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_out[4]}]
set_output_delay 4 -clock [get_clocks {vclk1}] [get_ports {tdigit[3]}]
set_output_delay 2 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_out[2]}]
set_output_delay 4 -clock [get_clocks {vclk1}] [get_ports {tdigit[1]}]
set_output_delay 2 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_out[0]}]
set_output_delay 2 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_out[14]}]
set_output_delay 2 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_out[12]}]
set_output_delay 2 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_out[10]}]
set_output_delay 2 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_out[9]}]
set_output_delay 2 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_out[7]}]
set_output_delay 4 -clock [get_clocks {vclk1}] [get_ports {tdigit[6]}]
set_output_delay 2 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_out[5]}]
set_output_delay 4 -clock [get_clocks {vclk1}] [get_ports {tdigit[4]}]
set_output_delay 2 -clock [get_clocks {vclk1}] [get_ports {port_pad_data_out[3]}]
set_output_delay 4 -clock [get_clocks {vclk1}] [get_ports {tdigit_flag}]
set_output_delay 4 -clock [get_clocks {vclk1}] [get_ports {tdigit[2]}]
set_clock_uncertainty 0.25  -from [all_clocks] -to [all_clocks]
set_false_path  -from [get_ports {reset}] 
set_false_path  -from [get_clocks {vclk1}]
set_multicycle_path 2 -start -setup  -to [get_pins {DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_31/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_31/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_30/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_30/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_29/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_29/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_28/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_28/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_27/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_27/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_26/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_26/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_25/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_25/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_24/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_24/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_23/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_23/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_22/D  \
  DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_22/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_21/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_21/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_20/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_20/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_19/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_19/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_18/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_18/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_17/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_17/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_16/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_16/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_15/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_15/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_14/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_14/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_13/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_13/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_12/D  \
  DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_12/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_11/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_11/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_10/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_10/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_9/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_9/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_8/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_8/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_7/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_7/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_6/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_6/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_5/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_5/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_4/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_4/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_3/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_3/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_2/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_2/E  \
  DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_1/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_1/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_0/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/p_reg_0/E}] 
set_multicycle_path 2 -start -setup  -to [get_pins {DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/ov_flag_reg/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/ov_flag_reg/RN DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/ov_flag_reg/RN}] 
set_multicycle_path 2 -start -setup  -to [get_pins {DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_32/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_32/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_31/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_31/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_30/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_30/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_29/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_29/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_28/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_28/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_27/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_27/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_26/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_26/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_25/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_25/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_24/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_24/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_23/D  \
  DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_23/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_22/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_22/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_21/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_21/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_20/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_20/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_19/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_19/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_18/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_18/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_17/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_17/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_16/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_16/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_15/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_15/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_14/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_14/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_13/D  \
  DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_13/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_12/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_12/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_11/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_11/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_10/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_10/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_9/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_9/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_8/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_8/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_7/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_7/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_6/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_6/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_5/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_5/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_4/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_4/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_3/D  \
  DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_3/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_2/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_2/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_1/D DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_1/E DTMF_INST/TDSP_CORE_INST/EXECUTE_INST/acc_reg_0/D}] 
set_clock_latency   2 [get_pins {DTMF_INST/TEST_CONTROL_INST/i_150/Y}]
