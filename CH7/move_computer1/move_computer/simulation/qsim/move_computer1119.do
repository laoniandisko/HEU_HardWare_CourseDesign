onerror {exit -code 1}
vlib work
vlog -work work move_computer1119.vo
vlog -work work Waveformmove_computer1119.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.move_computer1119_vlg_vec_tst -voptargs="+acc"
vcd file -direction move_computer1119.msim.vcd
vcd add -internal move_computer1119_vlg_vec_tst/*
vcd add -internal move_computer1119_vlg_vec_tst/i1/*
run -all
quit -f
