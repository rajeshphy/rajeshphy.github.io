set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/ug-vi/bh-curve-hysteresis/bh-curve.png'
set title 'B-H hysteresis loop'
set xlabel 'H (A m^{-1})'
set ylabel 'B (T)'
set grid
plot 'bh-curve.dat' using 1:2 with linespoints lw 2 pt 7 lc rgb '#8f3e36' title 'Measured loop'

