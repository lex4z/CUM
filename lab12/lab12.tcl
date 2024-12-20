set time_raw [clock seconds];
set date_string [clock format $time_raw -format "%y%m%d_%H%M%S"]
set proj_dir "Example_$date_string"
puts "Creating build directory $proj_dir"
file mkdir ~/$proj_dir

set src_dir [pwd]/sources

puts "Changing directory to $proj_dir"
cd ~/$proj_dir

set device xc7a35tcpg236-1
puts "Creating new project: testing_gen"
create_project tap_filter_project -part $device
set_property target_language Verilog [current_project]

puts "Adding RTL files to the project"
add_files -quiet [glob ~/sources/*.sv]
add_files -quiet [glob ~/sources/*.vhd]
puts "Adding constraints to the project"
add_files -quiet [glob ~/sources/*.xdc]

add_files -quiet [glob ~/sources/*.dat]

# Move every file which starts from "tb_" to simulation sources sim_1
foreach tb_file_name [get_files] {
    if {[string first "tb_" $tb_file_name] != -1} {
        puts "Moved $tb_file_name to simulation sources..."
        move_files -fileset sim_1 $tb_file_name
    }
}

update_compile_order -fileset sources_1
set_property top tb_lab12 [get_filesets sim_1]

set_property top_file {$src_dir/tb_lab12.sv} [get_filesets sim_1]

exec touch /home/user/data_from_fpga.dat

launch_sim
run 10000ns
close_sim

launch_runs synth_1
wait_on_run synth_1
launch_runs impl_1
wait_on_run impl_1