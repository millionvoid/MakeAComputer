# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tfgg676-2L

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {D:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.cache/wt} [current_project]
set_property parent.project_path {D:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.xpr} [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo {d:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  {D:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.srcs/sources_1/new/SEG7_LUT.v}
  {D:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.srcs/sources_1/new/SRAM.v}
  {D:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.srcs/sources_1/new/async.v}
  {D:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.srcs/sources_1/new/datatoSEG.v}
  {D:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.srcs/sources_1/new/vga.v}
  {D:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.srcs/sources_1/new/thinpad_top.v}
  {D:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.srcs/sources_1/new/Ctrl_SRAM_UART.v}
  {D:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.srcs/sources_1/new/UART.v}
  {D:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.srcs/sources_1/new/Memory.v}
  {D:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.srcs/sources_1/new/Controller.v}
  {D:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.srcs/sources_1/new/CPU.v}
  {D:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.srcs/sources_1/new/RegisterFile.v}
}
read_ip -quiet {{D:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.srcs/sources_1/ip/pll_example/pll_example.xci}}
set_property used_in_implementation false [get_files -all {{d:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.srcs/sources_1/ip/pll_example/pll_example_board.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.srcs/sources_1/ip/pll_example/pll_example.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.srcs/sources_1/ip/pll_example/pll_example_ooc.xdc}}]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{D:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.srcs/constrs_1/new/thinpad_top.xdc}}
set_property used_in_implementation false [get_files {{D:/3-Autumn/Organization Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.srcs/constrs_1/new/thinpad_top.xdc}}]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top RegisterFile -part xc7a100tfgg676-2L


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef RegisterFile.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file RegisterFile_utilization_synth.rpt -pb RegisterFile_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
