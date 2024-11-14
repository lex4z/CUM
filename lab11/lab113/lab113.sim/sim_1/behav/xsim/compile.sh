#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2023.1 (64-bit)
#
# Filename    : compile.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for compiling the simulation design source files
#
# Generated by Vivado on Thu Nov 14 22:34:27 +0000 2024
# SW Build 3865809 on Sun May  7 15:04:56 MDT 2023
#
# IP Build 3864474 on Sun May  7 20:36:21 MDT 2023
#
# usage: compile.sh
#
# ****************************************************************************
set -Eeuo pipefail
# compile Verilog/System Verilog design sources
echo "xvlog --incr --relax -L uvm -prj lab113_vlog.prj"
xvlog --incr --relax -L uvm -prj lab113_vlog.prj 2>&1 | tee compile.log

# compile VHDL design sources
echo "xvhdl --incr --relax -prj lab113_vhdl.prj"
xvhdl --incr --relax -prj lab113_vhdl.prj 2>&1 | tee -a compile.log

echo "Waiting for jobs to finish..."
echo "No pending jobs, compilation finished."
