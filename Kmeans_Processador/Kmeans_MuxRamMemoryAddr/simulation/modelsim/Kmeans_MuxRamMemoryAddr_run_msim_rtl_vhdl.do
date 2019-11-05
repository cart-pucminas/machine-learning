transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Lucas/Desktop/Kmeans_Processador/Kmeans_MuxRamMemoryAddr/Kmeans_MuxRamMemoryAddr.vhd}

