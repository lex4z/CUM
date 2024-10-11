#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2023.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Fri Oct 04 11:24:31 +0000 2024
# SW Build 3865809 on Sun May  7 15:04:56 MDT 2023
#
# IP Build 3864474 on Sun May  7 20:36:21 MDT 2023
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim tb_lab52_behav -key {Behavioral:sim_1:Functional:tb_lab52} -tclbatch tb_lab52.tcl -log simulate.log"
xsim tb_lab52_behav -key {Behavioral:sim_1:Functional:tb_lab52} -tclbatch tb_lab52.tcl -log simulate.log

