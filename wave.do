onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /bench/CLK
add wave -noupdate /bench/RESET
add wave -noupdate /bench/VGA_X
add wave -noupdate /bench/VGA_Y
add wave -noupdate /bench/iY
add wave -noupdate /bench/oY
add wave -noupdate -divider {Filtre video}
add wave -noupdate -radix decimal /bench/filtre/pixel_in
add wave -noupdate -radix decimal /bench/filtre/Y_cpt
add wave -noupdate -radix decimal /bench/filtre/X_cpt
add wave -noupdate /bench/filtre/in_active_area
add wave -noupdate /bench/filtre/adresse_memoire_ligne_current
add wave -noupdate /bench/filtre/adresse_memoire_ligne_next
add wave -noupdate /bench/filtre/read_write_memoire_ligne
add wave -noupdate -radix decimal -childformat {{/bench/filtre/out_memoire_ligne(7) -radix decimal} {/bench/filtre/out_memoire_ligne(6) -radix decimal} {/bench/filtre/out_memoire_ligne(5) -radix decimal} {/bench/filtre/out_memoire_ligne(4) -radix decimal} {/bench/filtre/out_memoire_ligne(3) -radix decimal} {/bench/filtre/out_memoire_ligne(2) -radix decimal} {/bench/filtre/out_memoire_ligne(1) -radix decimal} {/bench/filtre/out_memoire_ligne(0) -radix decimal}} -subitemconfig {/bench/filtre/out_memoire_ligne(7) {-height 16 -radix decimal} /bench/filtre/out_memoire_ligne(6) {-height 16 -radix decimal} /bench/filtre/out_memoire_ligne(5) {-height 16 -radix decimal} /bench/filtre/out_memoire_ligne(4) {-height 16 -radix decimal} /bench/filtre/out_memoire_ligne(3) {-height 16 -radix decimal} /bench/filtre/out_memoire_ligne(2) {-height 16 -radix decimal} /bench/filtre/out_memoire_ligne(1) {-height 16 -radix decimal} /bench/filtre/out_memoire_ligne(0) {-height 16 -radix decimal}} /bench/filtre/out_memoire_ligne
add wave -noupdate -radix decimal -childformat {{/bench/filtre/u_2/memoire(7) -radix decimal} {/bench/filtre/u_2/memoire(6) -radix decimal} {/bench/filtre/u_2/memoire(5) -radix decimal} {/bench/filtre/u_2/memoire(4) -radix decimal} {/bench/filtre/u_2/memoire(3) -radix decimal} {/bench/filtre/u_2/memoire(2) -radix decimal} {/bench/filtre/u_2/memoire(1) -radix decimal} {/bench/filtre/u_2/memoire(0) -radix decimal -childformat {{/bench/filtre/u_2/memoire(0)(7) -radix decimal} {/bench/filtre/u_2/memoire(0)(6) -radix decimal} {/bench/filtre/u_2/memoire(0)(5) -radix decimal} {/bench/filtre/u_2/memoire(0)(4) -radix decimal} {/bench/filtre/u_2/memoire(0)(3) -radix decimal} {/bench/filtre/u_2/memoire(0)(2) -radix decimal} {/bench/filtre/u_2/memoire(0)(1) -radix decimal} {/bench/filtre/u_2/memoire(0)(0) -radix decimal}}}} -subitemconfig {/bench/filtre/u_2/memoire(7) {-height 16 -radix decimal} /bench/filtre/u_2/memoire(6) {-height 16 -radix decimal} /bench/filtre/u_2/memoire(5) {-height 16 -radix decimal} /bench/filtre/u_2/memoire(4) {-height 16 -radix decimal} /bench/filtre/u_2/memoire(3) {-height 16 -radix decimal} /bench/filtre/u_2/memoire(2) {-height 16 -radix decimal} /bench/filtre/u_2/memoire(1) {-height 16 -radix decimal} /bench/filtre/u_2/memoire(0) {-height 16 -radix decimal -childformat {{/bench/filtre/u_2/memoire(0)(7) -radix decimal} {/bench/filtre/u_2/memoire(0)(6) -radix decimal} {/bench/filtre/u_2/memoire(0)(5) -radix decimal} {/bench/filtre/u_2/memoire(0)(4) -radix decimal} {/bench/filtre/u_2/memoire(0)(3) -radix decimal} {/bench/filtre/u_2/memoire(0)(2) -radix decimal} {/bench/filtre/u_2/memoire(0)(1) -radix decimal} {/bench/filtre/u_2/memoire(0)(0) -radix decimal}}} /bench/filtre/u_2/memoire(0)(7) {-height 16 -radix decimal} /bench/filtre/u_2/memoire(0)(6) {-height 16 -radix decimal} /bench/filtre/u_2/memoire(0)(5) {-height 16 -radix decimal} /bench/filtre/u_2/memoire(0)(4) {-height 16 -radix decimal} /bench/filtre/u_2/memoire(0)(3) {-height 16 -radix decimal} /bench/filtre/u_2/memoire(0)(2) {-height 16 -radix decimal} /bench/filtre/u_2/memoire(0)(1) {-height 16 -radix decimal} /bench/filtre/u_2/memoire(0)(0) {-height 16 -radix decimal}} /bench/filtre/u_2/memoire
add wave -noupdate /bench/filtre/synchro_curr
add wave -noupdate /bench/filtre/synchro_next
add wave -noupdate -divider {Module Gradient}
add wave -noupdate -radix hexadecimal -childformat {{/bench/filtre/u_3/Rs_curr(15) -radix hexadecimal} {/bench/filtre/u_3/Rs_curr(14) -radix hexadecimal} {/bench/filtre/u_3/Rs_curr(13) -radix hexadecimal} {/bench/filtre/u_3/Rs_curr(12) -radix hexadecimal} {/bench/filtre/u_3/Rs_curr(11) -radix hexadecimal} {/bench/filtre/u_3/Rs_curr(10) -radix hexadecimal} {/bench/filtre/u_3/Rs_curr(9) -radix hexadecimal} {/bench/filtre/u_3/Rs_curr(8) -radix hexadecimal} {/bench/filtre/u_3/Rs_curr(7) -radix hexadecimal} {/bench/filtre/u_3/Rs_curr(6) -radix hexadecimal} {/bench/filtre/u_3/Rs_curr(5) -radix hexadecimal} {/bench/filtre/u_3/Rs_curr(4) -radix hexadecimal} {/bench/filtre/u_3/Rs_curr(3) -radix hexadecimal} {/bench/filtre/u_3/Rs_curr(2) -radix hexadecimal} {/bench/filtre/u_3/Rs_curr(1) -radix hexadecimal} {/bench/filtre/u_3/Rs_curr(0) -radix hexadecimal}} -subitemconfig {/bench/filtre/u_3/Rs_curr(15) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_curr(14) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_curr(13) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_curr(12) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_curr(11) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_curr(10) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_curr(9) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_curr(8) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_curr(7) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_curr(6) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_curr(5) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_curr(4) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_curr(3) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_curr(2) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_curr(1) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_curr(0) {-height 16 -radix hexadecimal}} /bench/filtre/u_3/Rs_curr
add wave -noupdate -radix hexadecimal -childformat {{/bench/filtre/u_3/Rs_next(15) -radix hexadecimal} {/bench/filtre/u_3/Rs_next(14) -radix hexadecimal} {/bench/filtre/u_3/Rs_next(13) -radix hexadecimal} {/bench/filtre/u_3/Rs_next(12) -radix hexadecimal} {/bench/filtre/u_3/Rs_next(11) -radix hexadecimal} {/bench/filtre/u_3/Rs_next(10) -radix hexadecimal} {/bench/filtre/u_3/Rs_next(9) -radix hexadecimal} {/bench/filtre/u_3/Rs_next(8) -radix hexadecimal} {/bench/filtre/u_3/Rs_next(7) -radix hexadecimal} {/bench/filtre/u_3/Rs_next(6) -radix hexadecimal} {/bench/filtre/u_3/Rs_next(5) -radix hexadecimal} {/bench/filtre/u_3/Rs_next(4) -radix hexadecimal} {/bench/filtre/u_3/Rs_next(3) -radix hexadecimal} {/bench/filtre/u_3/Rs_next(2) -radix hexadecimal} {/bench/filtre/u_3/Rs_next(1) -radix hexadecimal} {/bench/filtre/u_3/Rs_next(0) -radix hexadecimal}} -subitemconfig {/bench/filtre/u_3/Rs_next(15) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_next(14) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_next(13) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_next(12) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_next(11) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_next(10) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_next(9) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_next(8) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_next(7) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_next(6) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_next(5) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_next(4) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_next(3) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_next(2) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_next(1) {-height 16 -radix hexadecimal} /bench/filtre/u_3/Rs_next(0) {-height 16 -radix hexadecimal}} /bench/filtre/u_3/Rs_next
add wave -noupdate -radix hexadecimal /bench/filtre/u_3/Rg_curr
add wave -noupdate -radix hexadecimal /bench/filtre/u_3/Rg_next
add wave -noupdate -radix hexadecimal /bench/filtre/u_3/Gh_next
add wave -noupdate -radix hexadecimal /bench/filtre/u_3/Gv_next
add wave -noupdate -radix decimal -childformat {{/bench/filtre/u_3/iYd(7) -radix decimal} {/bench/filtre/u_3/iYd(6) -radix decimal} {/bench/filtre/u_3/iYd(5) -radix decimal} {/bench/filtre/u_3/iYd(4) -radix decimal} {/bench/filtre/u_3/iYd(3) -radix decimal} {/bench/filtre/u_3/iYd(2) -radix decimal} {/bench/filtre/u_3/iYd(1) -radix decimal} {/bench/filtre/u_3/iYd(0) -radix decimal}} -subitemconfig {/bench/filtre/u_3/iYd(7) {-height 16 -radix decimal} /bench/filtre/u_3/iYd(6) {-height 16 -radix decimal} /bench/filtre/u_3/iYd(5) {-height 16 -radix decimal} /bench/filtre/u_3/iYd(4) {-height 16 -radix decimal} /bench/filtre/u_3/iYd(3) {-height 16 -radix decimal} /bench/filtre/u_3/iYd(2) {-height 16 -radix decimal} /bench/filtre/u_3/iYd(1) {-height 16 -radix decimal} /bench/filtre/u_3/iYd(0) {-height 16 -radix decimal}} /bench/filtre/u_3/iYd
add wave -noupdate -radix decimal -childformat {{/bench/filtre/u_3/iYu(7) -radix decimal} {/bench/filtre/u_3/iYu(6) -radix decimal} {/bench/filtre/u_3/iYu(5) -radix decimal} {/bench/filtre/u_3/iYu(4) -radix decimal} {/bench/filtre/u_3/iYu(3) -radix decimal} {/bench/filtre/u_3/iYu(2) -radix decimal} {/bench/filtre/u_3/iYu(1) -radix decimal} {/bench/filtre/u_3/iYu(0) -radix decimal}} -subitemconfig {/bench/filtre/u_3/iYu(7) {-height 16 -radix decimal} /bench/filtre/u_3/iYu(6) {-height 16 -radix decimal} /bench/filtre/u_3/iYu(5) {-height 16 -radix decimal} /bench/filtre/u_3/iYu(4) {-height 16 -radix decimal} /bench/filtre/u_3/iYu(3) {-height 16 -radix decimal} /bench/filtre/u_3/iYu(2) {-height 16 -radix decimal} /bench/filtre/u_3/iYu(1) {-height 16 -radix decimal} /bench/filtre/u_3/iYu(0) {-height 16 -radix decimal}} /bench/filtre/u_3/iYu
add wave -noupdate -radix hexadecimal /bench/filtre/u_3/oY
add wave -noupdate -radix hexadecimal /bench/filtre/out_gradient
add wave -noupdate -divider {Memoires lignes}
add wave -noupdate /bench/filtre/change_ligne_curr
add wave -noupdate /bench/filtre/change_ligne_next
add wave -noupdate /bench/filtre/read_write_memoire_ligne1
add wave -noupdate /bench/filtre/read_write_memoire_ligne2
add wave -noupdate -radix hexadecimal /bench/filtre/out_memoire_ligne1
add wave -noupdate -radix hexadecimal /bench/filtre/out_memoire_ligne2
add wave -noupdate -radix hexadecimal -childformat {{/bench/filtre/u_4/memoire(7) -radix hexadecimal} {/bench/filtre/u_4/memoire(6) -radix hexadecimal} {/bench/filtre/u_4/memoire(5) -radix hexadecimal} {/bench/filtre/u_4/memoire(4) -radix hexadecimal} {/bench/filtre/u_4/memoire(3) -radix hexadecimal} {/bench/filtre/u_4/memoire(2) -radix hexadecimal} {/bench/filtre/u_4/memoire(1) -radix hexadecimal} {/bench/filtre/u_4/memoire(0) -radix hexadecimal}} -subitemconfig {/bench/filtre/u_4/memoire(7) {-height 16 -radix hexadecimal} /bench/filtre/u_4/memoire(6) {-height 16 -radix hexadecimal} /bench/filtre/u_4/memoire(5) {-height 16 -radix hexadecimal} /bench/filtre/u_4/memoire(4) {-height 16 -radix hexadecimal} /bench/filtre/u_4/memoire(3) {-height 16 -radix hexadecimal} /bench/filtre/u_4/memoire(2) {-height 16 -radix hexadecimal} /bench/filtre/u_4/memoire(1) {-height 16 -radix hexadecimal} /bench/filtre/u_4/memoire(0) {-height 16 -radix hexadecimal}} /bench/filtre/u_4/memoire
add wave -noupdate -radix hexadecimal -childformat {{/bench/filtre/u_5/memoire(7) -radix hexadecimal} {/bench/filtre/u_5/memoire(6) -radix hexadecimal} {/bench/filtre/u_5/memoire(5) -radix hexadecimal} {/bench/filtre/u_5/memoire(4) -radix hexadecimal} {/bench/filtre/u_5/memoire(3) -radix hexadecimal} {/bench/filtre/u_5/memoire(2) -radix hexadecimal} {/bench/filtre/u_5/memoire(1) -radix hexadecimal} {/bench/filtre/u_5/memoire(0) -radix hexadecimal}} -subitemconfig {/bench/filtre/u_5/memoire(7) {-height 16 -radix hexadecimal} /bench/filtre/u_5/memoire(6) {-height 16 -radix hexadecimal} /bench/filtre/u_5/memoire(5) {-height 16 -radix hexadecimal} /bench/filtre/u_5/memoire(4) {-height 16 -radix hexadecimal} /bench/filtre/u_5/memoire(3) {-height 16 -radix hexadecimal} /bench/filtre/u_5/memoire(2) {-height 16 -radix hexadecimal} /bench/filtre/u_5/memoire(1) {-height 16 -radix hexadecimal} /bench/filtre/u_5/memoire(0) {-height 16 -radix hexadecimal}} /bench/filtre/u_5/memoire
add wave -noupdate -divider Registers
add wave -noupdate -radix hexadecimal /bench/filtre/R1_curr
add wave -noupdate -radix hexadecimal /bench/filtre/R1_next
add wave -noupdate -radix hexadecimal /bench/filtre/R2_curr
add wave -noupdate -radix hexadecimal /bench/filtre/R2_next
add wave -noupdate -radix hexadecimal /bench/filtre/R3_curr
add wave -noupdate -radix hexadecimal /bench/filtre/R3_next
add wave -noupdate -radix hexadecimal /bench/filtre/R4_curr
add wave -noupdate -radix hexadecimal /bench/filtre/R4_next
add wave -noupdate -radix hexadecimal /bench/filtre/R5_curr
add wave -noupdate -radix hexadecimal /bench/filtre/R5_next
add wave -noupdate -radix hexadecimal /bench/filtre/R6_curr
add wave -noupdate -radix hexadecimal /bench/filtre/R6_next
add wave -noupdate -divider {Signaux sortie}
add wave -noupdate -radix hexadecimal /bench/filtre/module_curr
add wave -noupdate -radix hexadecimal /bench/filtre/module_dir_plus
add wave -noupdate -radix hexadecimal /bench/filtre/module_dir_moins
add wave -noupdate -radix hexadecimal /bench/filtre/Gh
add wave -noupdate -radix hexadecimal /bench/filtre/Gv
add wave -noupdate -radix hexadecimal /bench/filtre/out_filtre
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2596 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 332
configure wave -valuecolwidth 291
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
WaveRestoreZoom {0 ns} {5680 ns}
