transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/berna/Documents/ISEL/Semestre2/LIC/Roleta-VHDL/RouletteDispatcher.vhd}

