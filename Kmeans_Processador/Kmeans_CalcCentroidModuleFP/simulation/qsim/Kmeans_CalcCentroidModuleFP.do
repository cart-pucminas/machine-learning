onerror {exit -code 1}
vlib work
vcom -work work Kmeans_CalcCentroidModuleFP.vho
vcom -work work Kmeans_CalcCentroidModuleFP.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Kmeans_CalcCentroidModuleFP_vhd_vec_tst
vcd file -direction Kmeans_CalcCentroidModuleFP.msim.vcd
vcd add -internal Kmeans_CalcCentroidModuleFP_vhd_vec_tst/*
vcd add -internal Kmeans_CalcCentroidModuleFP_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
