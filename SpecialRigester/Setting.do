vlib work
vmap work work
vlog *.v
vsim TOP
vsim SubtractorTest
view structure
view signals
view wave
add wave -noupdate -divider -height 20 Inputs
add wave -noupdate clk
add wave -noupdate sel
add wave -noupdate PIn
add wave -noupdate SIn
add wave -noupdate -divider -height 20 Outputs
add wave -noupdate SOut
add wave -noupdate POut
run 250