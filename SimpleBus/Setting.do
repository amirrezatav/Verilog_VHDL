vlib work
vmap work work 
vlog *.v
vsim -novopt Top

view structure
view signals
view wave

add wave -noupdate -divider -height 20 Clock
add wave -noupdate clk

add wave -noupdate -divider -height 20 Select
add wave -noupdate select

add wave -noupdate -divider -height 20 AR
add wave -noupdate ARout

add wave -noupdate -divider -height 20 DR
add wave -noupdate DRout

add wave -noupdate -divider -height 20 PC
add wave -noupdate PCout

run 1200