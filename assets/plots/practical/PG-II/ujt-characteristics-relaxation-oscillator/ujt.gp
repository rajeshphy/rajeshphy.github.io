set terminal pngcairo size 1000,650 enhanced font 'Arial,18'
set output '../../../../images/practical/pg-ii/ujt-characteristics-relaxation-oscillator/ujt-characteristic.png'
set title 'UJT emitter characteristic'
set xlabel 'Emitter voltage, V_E (V)'
set ylabel 'Emitter current, I_E (mA)'
set grid
set key top left
plot 'ujt.dat' using 1:2 with linespoints lw 2.5 pt 7 ps 1.1 lc rgb '#0b6b6b' title 'Measured path'
