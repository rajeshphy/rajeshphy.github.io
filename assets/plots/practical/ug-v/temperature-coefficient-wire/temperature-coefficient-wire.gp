set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/ug-v/temperature-coefficient-wire/temperature-coefficient-wire.png'
set title 'Resistance-temperature relation'
set xlabel 'Temperature (deg C)'
set ylabel 'Resistance (ohm)'
set grid
plot 'temperature-coefficient-wire.dat' using 1:2 with linespoints lw 2 pt 7 lc rgb '#8f3e36' title 'Observed resistance'
