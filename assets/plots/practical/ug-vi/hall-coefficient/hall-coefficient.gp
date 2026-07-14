set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/ug-vi/hall-coefficient/hall-coefficient.png'
set title 'Hall voltage versus magnetic field'
set xlabel 'Magnetic field (T)'
set ylabel 'Hall voltage (mV)'
set grid
plot 'hall-coefficient.dat' using 1:2 with linespoints lw 2 pt 7 lc rgb '#8f3e36' title 'Measured Hall voltage'

