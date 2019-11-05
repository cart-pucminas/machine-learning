onerror {exit -code 1}
vlib work
vcom -work work Kmeans_RegisterBank.vho
vcom -work work Kmeans_RegisterBank.vwf.vht
vsim -novopt -c -t 1ps -L cycloneiv -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Kmeans_RegisterBank_vhd_vec_tst
vcd file -direction Kmeans_RegisterBank.msim.vcd
vcd add -internal Kmeans_RegisterBank_vhd_vec_tst/*
vcd add -internal Kmeans_RegisterBank_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

