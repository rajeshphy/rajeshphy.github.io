set terminal pngcairo size 1000,650 enhanced font 'Arial,18'
set output '../../../../images/practical/pg-ii/hartley-oscillator/hartley-frequency.png'
set title 'Hartley oscillator frequency versus tank capacitance'
set xlabel 'Tank capacitance, C (nF)'
set ylabel 'Oscillation frequency (kHz)'
set grid
set key top right
plot 'hartley.dat' using 1:2 with linespoints lw 2.5 pt 7 ps 1.1 lc rgb '#8f3e36' title 'Observed frequency'
