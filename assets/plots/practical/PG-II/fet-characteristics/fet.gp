set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/pg-ii/fet-characteristics/fet.png'
set title 'JFET transfer characteristic'
set xlabel 'Gate-source voltage (V)'
set ylabel 'Drain current (mA)'
set grid
plot 'fet.dat' using 1:2 with linespoints lw 2 pt 7 lc rgb '#8f3e36' title 'Measured transfer curve'

