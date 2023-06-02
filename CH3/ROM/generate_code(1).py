#author : Jerry(2020065604)
#自动生成最后一次硬件实验的波形图文件。只需要编译即可。

'''
配置部分
'''

#在此处填入指令
codes = [0x00,0x10,0x0c,0x10,0x0d,0x20,0x0c,0x30,0x0c,0x40,0x03,0x00,0x14,0x43,0x00,0x00]

#总持续时间，单位us
END = 50 * 1000 * 1.0    

#在此处指定周期
CLOCK = 10.0
STEP = 100.0

#其他参数，如SWA、SWB会自动计算。


'''
无其他问题时，不要修改下面的代码
如果出现任何问题，请点击Simulation -> Simulation Settings ->Restore Defaults
'''

import os

parent_path = os.path.abspath('.')
parent_path = parent_path.replace('\\','/')
path = os.path.abspath('.') + '/Waveform.vwf'
path = path.replace ('\\','/')
file = open(path,'w+',encoding='utf-8')

#二进制换向信号
#计算SWB和SWA
#第一个元素为低电平，后续一个元素切换一次，-1为无限长
SWB = [
    len(codes) * 2 * STEP * 3 + STEP * 2 * 3 + len(codes) * 2 * STEP * 3 , 
    -1
]
SWA = [
    0,      #起始换向
    len(codes) * 2 * STEP * 3 + STEP * 2 * 3 , 
    len(codes) * 2 * STEP * 3 , 
    -1
]

#脉冲信号
#计算RST
RST = [
    0,
    SWA[1] + STEP*2,
    SWA[1] + STEP * 2 + SWA[2] + STEP*2

]
#写入前置内容

sec_1 = '''
/*<simulation_settings>
<ftestbench_cmd>quartus_eda --gen_testbench --tool=modelsim_oem --format=verilog --write_settings_files=off computer -c computer --vector_source="'''+ path +'''" --testbench_file="'''+ parent_path +'''/simulation/qsim/Waveform.vwf.vt"</ftestbench_cmd>
<ttestbench_cmd>quartus_eda --gen_testbench --tool=modelsim_oem --format=verilog --write_settings_files=off computer -c computer --vector_source="'''+ path +'''" --testbench_file="'''+ parent_path +'''/simulation/qsim/Waveform.vwf.vt"</ttestbench_cmd>
<fnetlist_cmd>quartus_eda --write_settings_files=off --simulation --functional=on --flatten_buses=off --tool=modelsim_oem --format=verilog --output_directory="''' + parent_path +'''/simulation/qsim/" computer -c computer</fnetlist_cmd>
<tnetlist_cmd>quartus_eda --write_settings_files=off --simulation --functional=off --flatten_buses=off --timescale=1ps --tool=modelsim_oem --format=verilog --output_directory="''' + parent_path +'''/simulation/qsim/" computer -c computer</tnetlist_cmd>
<modelsim_script>onerror {exit -code 1}
vlib work
vlog -work work computer.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.computer_vlg_vec_tst
vcd file -direction computer.msim.vcd
vcd add -internal computer_vlg_vec_tst/*
vcd add -internal computer_vlg_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f








</modelsim_script>
<modelsim_script_timing>onerror {exit -code 1}
vlib work
vlog -work work computer.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.computer_vlg_vec_tst
vcd file -direction computer.msim.vcd
vcd add -internal computer_vlg_vec_tst/*
vcd add -internal computer_vlg_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f








</modelsim_script_timing>
<hdl_lang>verilog</hdl_lang>
</simulation_settings>*/
/*
WARNING: Do NOT edit the input and output ports in this file in a text
editor if you plan to continue editing the block that represents it in
the Block Editor! File corruption is VERY likely to occur.
*/

/*
Copyright (C) 2017  Intel Corporation. All rights reserved.
Your use of Intel Corporation's design tools, logic functions 
and other software and tools, and its AMPP partner logic 
functions, and any output files from any of the foregoing 
(including device programming or simulation files), and any 
associated documentation or information are expressly subject 
to the terms and conditions of the Intel Program License 
Subscription Agreement, the Intel Quartus Prime License Agreement,
the Intel FPGA IP License Agreement, or other applicable license
agreement, including, without limitation, that your use is for
the sole purpose of programming logic devices manufactured by
Intel and sold by Intel or its authorized distributors.  Please
refer to the applicable agreement for further details.
*/
'''
file.write(sec_1)

sec_2 = '''
HEADER
{
	VERSION = 1;
	TIME_UNIT = ns;
	DATA_OFFSET = 0.0;
	DATA_DURATION = ''' + str(END) + ''';
	SIMULATION_TIME = 0.0;
	GRID_PHASE = 0.0;
	GRID_PERIOD = 10.0;
	GRID_DUTY_CYCLE = 50;
}
SIGNAL("bus")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = BUS;
	WIDTH = 8;
	LSB_INDEX = 0;
	DIRECTION = OUTPUT;
	PARENT = "";
}

SIGNAL("bus[7]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "bus";
}

SIGNAL("bus[6]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "bus";
}

SIGNAL("bus[5]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "bus";
}

SIGNAL("bus[4]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "bus";
}

SIGNAL("bus[3]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "bus";
}

SIGNAL("bus[2]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "bus";
}

SIGNAL("bus[1]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "bus";
}

SIGNAL("bus[0]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "bus";
}

SIGNAL("CLK1")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = INPUT;
	PARENT = "";
}

SIGNAL("d0")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = BUS;
	WIDTH = 8;
	LSB_INDEX = 0;
	DIRECTION = INPUT;
	PARENT = "";
}

SIGNAL("d0[7]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = INPUT;
	PARENT = "d0";
}

SIGNAL("d0[6]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = INPUT;
	PARENT = "d0";
}

SIGNAL("d0[5]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = INPUT;
	PARENT = "d0";
}

SIGNAL("d0[4]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = INPUT;
	PARENT = "d0";
}

SIGNAL("d0[3]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = INPUT;
	PARENT = "d0";
}

SIGNAL("d0[2]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = INPUT;
	PARENT = "d0";
}

SIGNAL("d0[1]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = INPUT;
	PARENT = "d0";
}

SIGNAL("d0[0]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = INPUT;
	PARENT = "d0";
}

SIGNAL("I")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = BUS;
	WIDTH = 8;
	LSB_INDEX = 0;
	DIRECTION = OUTPUT;
	PARENT = "";
}

SIGNAL("I[7]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "I";
}

SIGNAL("I[6]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "I";
}

SIGNAL("I[5]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "I";
}

SIGNAL("I[4]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "I";
}

SIGNAL("I[3]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "I";
}

SIGNAL("I[2]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "I";
}

SIGNAL("I[1]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "I";
}

SIGNAL("I[0]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "I";
}

SIGNAL("LDAR")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "";
}

SIGNAL("LDPC")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "";
}

SIGNAL("led")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = BUS;
	WIDTH = 8;
	LSB_INDEX = 0;
	DIRECTION = OUTPUT;
	PARENT = "";
}

SIGNAL("led[7]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "led";
}

SIGNAL("led[6]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "led";
}

SIGNAL("led[5]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "led";
}

SIGNAL("led[4]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "led";
}

SIGNAL("led[3]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "led";
}

SIGNAL("led[2]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "led";
}

SIGNAL("led[1]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "led";
}

SIGNAL("led[0]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "led";
}

SIGNAL("LED_B")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "";
}

SIGNAL("M")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = BUS;
	WIDTH = 24;
	LSB_INDEX = 0;
	DIRECTION = OUTPUT;
	PARENT = "";
}

SIGNAL("M[23]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[22]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[21]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[20]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[19]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[18]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[17]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[16]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[15]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[14]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[13]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[12]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[11]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[10]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[9]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[8]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[7]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[6]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[5]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[4]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[3]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[2]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[1]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("M[0]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "M";
}

SIGNAL("n")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = BUS;
	WIDTH = 8;
	LSB_INDEX = 0;
	DIRECTION = OUTPUT;
	PARENT = "";
}

SIGNAL("n[7]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "n";
}

SIGNAL("n[6]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "n";
}

SIGNAL("n[5]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "n";
}

SIGNAL("n[4]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "n";
}

SIGNAL("n[3]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "n";
}

SIGNAL("n[2]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "n";
}

SIGNAL("n[1]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "n";
}

SIGNAL("n[0]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "n";
}

SIGNAL("PC")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = BUS;
	WIDTH = 8;
	LSB_INDEX = 0;
	DIRECTION = OUTPUT;
	PARENT = "";
}

SIGNAL("PC[7]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "PC";
}

SIGNAL("PC[6]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "PC";
}

SIGNAL("PC[5]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "PC";
}

SIGNAL("PC[4]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "PC";
}

SIGNAL("PC[3]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "PC";
}

SIGNAL("PC[2]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "PC";
}

SIGNAL("PC[1]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "PC";
}

SIGNAL("PC[0]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "PC";
}

SIGNAL("PC_B")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "";
}

SIGNAL("RAM_B")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "";
}

SIGNAL("RST1")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = INPUT;
	PARENT = "";
}

SIGNAL("STEP")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = INPUT;
	PARENT = "";
}

SIGNAL("SW_B")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "";
}

SIGNAL("SWA")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = INPUT;
	PARENT = "";
}

SIGNAL("SWB")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = INPUT;
	PARENT = "";
}

SIGNAL("T1")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "";
}

SIGNAL("T2")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "";
}

SIGNAL("T3")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "";
}

SIGNAL("T4")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "";
}

SIGNAL("uaddr")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = BUS;
	WIDTH = 6;
	LSB_INDEX = 0;
	DIRECTION = OUTPUT;
	PARENT = "";
}

SIGNAL("uaddr[5]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "uaddr";
}

SIGNAL("uaddr[4]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "uaddr";
}

SIGNAL("uaddr[3]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "uaddr";
}

SIGNAL("uaddr[2]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "uaddr";
}

SIGNAL("uaddr[1]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "uaddr";
}

SIGNAL("uaddr[0]")
{
	VALUE_TYPE = NINE_LEVEL_BIT;
	SIGNAL_TYPE = SINGLE_BIT;
	WIDTH = 1;
	LSB_INDEX = -1;
	DIRECTION = OUTPUT;
	PARENT = "uaddr";
}
'''
file.write(sec_2)

sec_3 = '''
TRANSITION_LIST("bus[7]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("bus[6]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("bus[5]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("bus[4]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("bus[3]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("bus[2]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("bus[1]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("bus[0]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}
'''
file.write(sec_3)

sec_4 = '''
TRANSITION_LIST("CLK1")
{
	NODE
	{
		REPEAT = 1;
		NODE
		{
			REPEAT = ''' + str(END / (CLOCK * 2)) + ''';
			LEVEL 0 FOR ''' + str(CLOCK) + ''';
			LEVEL 1 FOR ''' + str(CLOCK) + ''';
		}
	}
}
'''
file.write(sec_4)


#写入指令
bitwise_boxs = []
for code in codes:
    result = [0,0,0,0,0,0,0,0]
    index = 0
    while(code != 0):
        result[index] =(int)(code % 2)
        code = code - result[index]
        code = code /2
        index = index + 1
    result.reverse()
    bitwise_boxs.append(result)

for row in range(0,8):
    file.write('TRANSITION_LIST("d0[' + str(7 - row)+']")\n')
    file.write('{\n')
    file.write('\tNODE\n')
    file.write('\t{\n')
    file.write('\t\tREPEAT = 1;\n')
    box_count = 0
    for box in bitwise_boxs:
        file.write('\t\tLEVEL ' + str(box[row]) + ' FOR ' + str(2 * 3 * STEP)+ ';\n')
    file.write('\t}\n')
    file.write('}\n')

sec_5 = '''

TRANSITION_LIST("I[7]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("I[6]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("I[5]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("I[4]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("I[3]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("I[2]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("I[1]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("I[0]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("LDAR")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("LDPC")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("led[7]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("led[6]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("led[5]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("led[4]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("led[3]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("led[2]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("led[1]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("led[0]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("LED_B")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[23]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[22]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[21]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[20]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[19]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[18]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[17]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[16]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[15]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[14]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[13]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[12]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[11]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[10]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[9]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[8]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[7]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[6]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[5]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[4]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[3]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[2]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[1]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("M[0]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("n[7]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("n[6]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("n[5]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("n[4]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("n[3]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("n[2]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("n[1]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("n[0]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("PC[7]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("PC[6]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("PC[5]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("PC[4]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("PC[3]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("PC[2]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("PC[1]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("PC[0]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("PC_B")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("RAM_B")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

'''
file.write(sec_5)
sec_rst = '''
TRANSITION_LIST("RST1")
{
	NODE
	{
		REPEAT = 1;
		LEVEL 1 FOR ''' + str(CLOCK * 2) + ''';
		LEVEL 0 FOR ''' + str(RST[1] - CLOCK * 2) + ''';
		LEVEL 1 FOR ''' + str(CLOCK * 2) + ''';
		LEVEL 0 FOR ''' + str(RST[2] - RST[1] - CLOCK * 2) + ''';
		LEVEL 1 FOR ''' + str(CLOCK * 2) + ''';
		LEVEL 0 FOR ''' + str(END - RST[2] - CLOCK * 2) + ''';
	}
}
'''
#写入SWB、SWA、RST
file.write(sec_rst)

sec_step = '''
TRANSITION_LIST("STEP")
{
	NODE
	{
		REPEAT = 1;
		NODE
		{
			REPEAT = ''' + str(END / (STEP * 2)) +''';
			LEVEL 0 FOR ''' + str(STEP) + ''';
			LEVEL 1 FOR ''' + str(STEP) + ''';
		}
	}
}
'''
file.write(sec_step)

sec_SW_B = '''
TRANSITION_LIST("SW_B")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}
'''
file.write(sec_SW_B)

sec_SWB_SWA = '''
TRANSITION_LIST("SWA")
{
	NODE
	{
		REPEAT = 1;
		LEVEL 1 FOR ''' + str(SWA[1]) +''';
		LEVEL 0 FOR ''' + str(SWA[2]) +''';
		LEVEL 1 FOR ''' + str(END-SWA[2] - SWA[1] - SWA[0]) +''';
	}
}

TRANSITION_LIST("SWB")
{
	NODE
	{
		REPEAT = 1;
		LEVEL 0 FOR ''' + str(SWB[0]) + ''';
		LEVEL 1 FOR ''' + str(END-SWB[0]) + ''';
	}
}
'''

file.write(sec_SWB_SWA)

sec_6 = '''
TRANSITION_LIST("T1")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("T2")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("T3")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("T4")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("uaddr[5]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("uaddr[4]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("uaddr[3]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("uaddr[2]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("uaddr[1]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}

TRANSITION_LIST("uaddr[0]")
{
	NODE
	{
		REPEAT = 1;
		LEVEL X FOR ''' + str(END) + ''';
	}
}
'''
file.write(sec_6)

sec_7 = '''
DISPLAY_LINE
{
	CHANNEL = "STEP";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 0;
	TREE_LEVEL = 0;
}

DISPLAY_LINE
{
	CHANNEL = "CLK1";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 1;
	TREE_LEVEL = 0;
}

DISPLAY_LINE
{
	CHANNEL = "RST1";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 2;
	TREE_LEVEL = 0;
}

DISPLAY_LINE
{
	CHANNEL = "SWB";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 3;
	TREE_LEVEL = 0;
}

DISPLAY_LINE
{
	CHANNEL = "SWA";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 4;
	TREE_LEVEL = 0;
}

DISPLAY_LINE
{
	CHANNEL = "d0";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 5;
	TREE_LEVEL = 0;
	CHILDREN = 6, 7, 8, 9, 10, 11, 12, 13;
}

DISPLAY_LINE
{
	CHANNEL = "d0[7]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 6;
	TREE_LEVEL = 1;
	PARENT = 5;
}

DISPLAY_LINE
{
	CHANNEL = "d0[6]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 7;
	TREE_LEVEL = 1;
	PARENT = 5;
}

DISPLAY_LINE
{
	CHANNEL = "d0[5]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 8;
	TREE_LEVEL = 1;
	PARENT = 5;
}

DISPLAY_LINE
{
	CHANNEL = "d0[4]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 9;
	TREE_LEVEL = 1;
	PARENT = 5;
}

DISPLAY_LINE
{
	CHANNEL = "d0[3]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 10;
	TREE_LEVEL = 1;
	PARENT = 5;
}

DISPLAY_LINE
{
	CHANNEL = "d0[2]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 11;
	TREE_LEVEL = 1;
	PARENT = 5;
}

DISPLAY_LINE
{
	CHANNEL = "d0[1]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 12;
	TREE_LEVEL = 1;
	PARENT = 5;
}

DISPLAY_LINE
{
	CHANNEL = "d0[0]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 13;
	TREE_LEVEL = 1;
	PARENT = 5;
}

DISPLAY_LINE
{
	CHANNEL = "uaddr";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Octal;
	TREE_INDEX = 14;
	TREE_LEVEL = 0;
	CHILDREN = 15, 16, 17, 18, 19, 20;
}

DISPLAY_LINE
{
	CHANNEL = "uaddr[5]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 15;
	TREE_LEVEL = 1;
	PARENT = 14;
}

DISPLAY_LINE
{
	CHANNEL = "uaddr[4]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 16;
	TREE_LEVEL = 1;
	PARENT = 14;
}

DISPLAY_LINE
{
	CHANNEL = "uaddr[3]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 17;
	TREE_LEVEL = 1;
	PARENT = 14;
}

DISPLAY_LINE
{
	CHANNEL = "uaddr[2]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 18;
	TREE_LEVEL = 1;
	PARENT = 14;
}

DISPLAY_LINE
{
	CHANNEL = "uaddr[1]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 19;
	TREE_LEVEL = 1;
	PARENT = 14;
}

DISPLAY_LINE
{
	CHANNEL = "uaddr[0]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 20;
	TREE_LEVEL = 1;
	PARENT = 14;
}

DISPLAY_LINE
{
	CHANNEL = "M";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 21;
	TREE_LEVEL = 0;
	CHILDREN = 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45;
}

DISPLAY_LINE
{
	CHANNEL = "M[23]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 22;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[22]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 23;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[21]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 24;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[20]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 25;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[19]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 26;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[18]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 27;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[17]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 28;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[16]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 29;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[15]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 30;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[14]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 31;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[13]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 32;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[12]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 33;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[11]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 34;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[10]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 35;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[9]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 36;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[8]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 37;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[7]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 38;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[6]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 39;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[5]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 40;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[4]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 41;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[3]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 42;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[2]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 43;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[1]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 44;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "M[0]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 45;
	TREE_LEVEL = 1;
	PARENT = 21;
}

DISPLAY_LINE
{
	CHANNEL = "PC";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 46;
	TREE_LEVEL = 0;
	CHILDREN = 47, 48, 49, 50, 51, 52, 53, 54;
}

DISPLAY_LINE
{
	CHANNEL = "PC[7]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 47;
	TREE_LEVEL = 1;
	PARENT = 46;
}

DISPLAY_LINE
{
	CHANNEL = "PC[6]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 48;
	TREE_LEVEL = 1;
	PARENT = 46;
}

DISPLAY_LINE
{
	CHANNEL = "PC[5]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 49;
	TREE_LEVEL = 1;
	PARENT = 46;
}

DISPLAY_LINE
{
	CHANNEL = "PC[4]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 50;
	TREE_LEVEL = 1;
	PARENT = 46;
}

DISPLAY_LINE
{
	CHANNEL = "PC[3]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 51;
	TREE_LEVEL = 1;
	PARENT = 46;
}

DISPLAY_LINE
{
	CHANNEL = "PC[2]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 52;
	TREE_LEVEL = 1;
	PARENT = 46;
}

DISPLAY_LINE
{
	CHANNEL = "PC[1]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 53;
	TREE_LEVEL = 1;
	PARENT = 46;
}

DISPLAY_LINE
{
	CHANNEL = "PC[0]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 54;
	TREE_LEVEL = 1;
	PARENT = 46;
}

DISPLAY_LINE
{
	CHANNEL = "I";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 55;
	TREE_LEVEL = 0;
	CHILDREN = 56, 57, 58, 59, 60, 61, 62, 63;
}

DISPLAY_LINE
{
	CHANNEL = "I[7]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 56;
	TREE_LEVEL = 1;
	PARENT = 55;
}

DISPLAY_LINE
{
	CHANNEL = "I[6]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 57;
	TREE_LEVEL = 1;
	PARENT = 55;
}

DISPLAY_LINE
{
	CHANNEL = "I[5]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 58;
	TREE_LEVEL = 1;
	PARENT = 55;
}

DISPLAY_LINE
{
	CHANNEL = "I[4]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 59;
	TREE_LEVEL = 1;
	PARENT = 55;
}

DISPLAY_LINE
{
	CHANNEL = "I[3]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 60;
	TREE_LEVEL = 1;
	PARENT = 55;
}

DISPLAY_LINE
{
	CHANNEL = "I[2]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 61;
	TREE_LEVEL = 1;
	PARENT = 55;
}

DISPLAY_LINE
{
	CHANNEL = "I[1]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 62;
	TREE_LEVEL = 1;
	PARENT = 55;
}

DISPLAY_LINE
{
	CHANNEL = "I[0]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 63;
	TREE_LEVEL = 1;
	PARENT = 55;
}

DISPLAY_LINE
{
	CHANNEL = "bus";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 64;
	TREE_LEVEL = 0;
	CHILDREN = 65, 66, 67, 68, 69, 70, 71, 72;
}

DISPLAY_LINE
{
	CHANNEL = "bus[7]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 65;
	TREE_LEVEL = 1;
	PARENT = 64;
}

DISPLAY_LINE
{
	CHANNEL = "bus[6]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 66;
	TREE_LEVEL = 1;
	PARENT = 64;
}

DISPLAY_LINE
{
	CHANNEL = "bus[5]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 67;
	TREE_LEVEL = 1;
	PARENT = 64;
}

DISPLAY_LINE
{
	CHANNEL = "bus[4]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 68;
	TREE_LEVEL = 1;
	PARENT = 64;
}

DISPLAY_LINE
{
	CHANNEL = "bus[3]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 69;
	TREE_LEVEL = 1;
	PARENT = 64;
}

DISPLAY_LINE
{
	CHANNEL = "bus[2]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 70;
	TREE_LEVEL = 1;
	PARENT = 64;
}

DISPLAY_LINE
{
	CHANNEL = "bus[1]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 71;
	TREE_LEVEL = 1;
	PARENT = 64;
}

DISPLAY_LINE
{
	CHANNEL = "bus[0]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 72;
	TREE_LEVEL = 1;
	PARENT = 64;
}

DISPLAY_LINE
{
	CHANNEL = "led";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 73;
	TREE_LEVEL = 0;
	CHILDREN = 74, 75, 76, 77, 78, 79, 80, 81;
}

DISPLAY_LINE
{
	CHANNEL = "led[7]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 74;
	TREE_LEVEL = 1;
	PARENT = 73;
}

DISPLAY_LINE
{
	CHANNEL = "led[6]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 75;
	TREE_LEVEL = 1;
	PARENT = 73;
}

DISPLAY_LINE
{
	CHANNEL = "led[5]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 76;
	TREE_LEVEL = 1;
	PARENT = 73;
}

DISPLAY_LINE
{
	CHANNEL = "led[4]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 77;
	TREE_LEVEL = 1;
	PARENT = 73;
}

DISPLAY_LINE
{
	CHANNEL = "led[3]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 78;
	TREE_LEVEL = 1;
	PARENT = 73;
}

DISPLAY_LINE
{
	CHANNEL = "led[2]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 79;
	TREE_LEVEL = 1;
	PARENT = 73;
}

DISPLAY_LINE
{
	CHANNEL = "led[1]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 80;
	TREE_LEVEL = 1;
	PARENT = 73;
}

DISPLAY_LINE
{
	CHANNEL = "led[0]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 81;
	TREE_LEVEL = 1;
	PARENT = 73;
}

DISPLAY_LINE
{
	CHANNEL = "PC_B";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 82;
	TREE_LEVEL = 0;
}

DISPLAY_LINE
{
	CHANNEL = "RAM_B";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 83;
	TREE_LEVEL = 0;
}

DISPLAY_LINE
{
	CHANNEL = "SW_B";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 84;
	TREE_LEVEL = 0;
}

DISPLAY_LINE
{
	CHANNEL = "LED_B";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 85;
	TREE_LEVEL = 0;
}

DISPLAY_LINE
{
	CHANNEL = "LDAR";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 86;
	TREE_LEVEL = 0;
}

DISPLAY_LINE
{
	CHANNEL = "LDPC";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 87;
	TREE_LEVEL = 0;
}

DISPLAY_LINE
{
	CHANNEL = "n";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 88;
	TREE_LEVEL = 0;
	CHILDREN = 89, 90, 91, 92, 93, 94, 95, 96;
}

DISPLAY_LINE
{
	CHANNEL = "n[7]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 89;
	TREE_LEVEL = 1;
	PARENT = 88;
}

DISPLAY_LINE
{
	CHANNEL = "n[6]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 90;
	TREE_LEVEL = 1;
	PARENT = 88;
}

DISPLAY_LINE
{
	CHANNEL = "n[5]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 91;
	TREE_LEVEL = 1;
	PARENT = 88;
}

DISPLAY_LINE
{
	CHANNEL = "n[4]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 92;
	TREE_LEVEL = 1;
	PARENT = 88;
}

DISPLAY_LINE
{
	CHANNEL = "n[3]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 93;
	TREE_LEVEL = 1;
	PARENT = 88;
}

DISPLAY_LINE
{
	CHANNEL = "n[2]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 94;
	TREE_LEVEL = 1;
	PARENT = 88;
}

DISPLAY_LINE
{
	CHANNEL = "n[1]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 95;
	TREE_LEVEL = 1;
	PARENT = 88;
}

DISPLAY_LINE
{
	CHANNEL = "n[0]";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 96;
	TREE_LEVEL = 1;
	PARENT = 88;
}

DISPLAY_LINE
{
	CHANNEL = "T1";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 97;
	TREE_LEVEL = 0;
}

DISPLAY_LINE
{
	CHANNEL = "T2";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 98;
	TREE_LEVEL = 0;
}

DISPLAY_LINE
{
	CHANNEL = "T3";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 99;
	TREE_LEVEL = 0;
}

DISPLAY_LINE
{
	CHANNEL = "T4";
	EXPAND_STATUS = COLLAPSED;
	RADIX = Hexadecimal;
	TREE_INDEX = 100;
	TREE_LEVEL = 0;
}

TIME_BAR
{
	TIME = 0;
	MASTER = TRUE;
}
;

'''

file.write(sec_7)
file.close()

print('done!')