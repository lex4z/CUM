transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+mult_gen_0  -L xbip_utils_v3_0_10 -L xbip_pipe_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_18 -L xil_defaultlib -L secureip -O2 xil_defaultlib.mult_gen_0

do {mult_gen_0.udo}

run

endsim

quit -force
