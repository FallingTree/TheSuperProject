onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Bench
add wave -noupdate /bench/CLK
add wave -noupdate /bench/RESET
add wave -noupdate /bench/VGA_X
add wave -noupdate /bench/VGA_Y
add wave -noupdate -radix decimal /bench/iY
add wave -noupdate -divider {Filtre vidéo}
add wave -noupdate -radix decimal /bench/filtre/oY
add wave -noupdate -radix decimal /bench/filtre/pixel_in
add wave -noupdate /bench/filtre/in_active_area
add wave -noupdate -radix unsigned /bench/filtre/adresse_memoire_ligne_current
add wave -noupdate -radix unsigned /bench/filtre/adresse_memoire_ligne_next
add wave -noupdate /bench/filtre/read_write_memoire_ligne
add wave -noupdate -radix decimal /bench/filtre/out_memoire_ligne
add wave -noupdate -radix decimal /bench/filtre/out_gradient
add wave -noupdate /bench/filtre/synchro_curr
add wave -noupdate /bench/filtre/synchro_next
add wave -noupdate -radix decimal /bench/filtre/Y_cpt
add wave -noupdate -radix decimal /bench/filtre/X_cpt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {258 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 446
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {872 ns}
