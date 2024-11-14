#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2023.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Thu Nov 14 22:11:42 +0000 2024
# SW Build 3865809 on Sun May  7 15:04:56 MDT 2023
#
# IP Build 3864474 on Sun May  7 20:36:21 MDT 2023
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim lab113_behav -key {Behavioral:sim_1:Functional:lab113} -tclbatch lab113.tcl -view /home/user/lab113/lab113_behav.wcfg -log simulate.log"
xsim lab113_behav -key {Behavioral:sim_1:Functional:lab113} -tclbatch lab113.tcl -view /home/user/lab113/lab113_behav.wcfg -log simulate.log
