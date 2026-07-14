set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/ug-v/specific-heat-cooling/specific-heat-cooling.png'
set title 'Cooling curve of the liquid'
set xlabel 'Time (s)'
set ylabel 'Temperature (deg C)'
set grid
plot 'specific-heat-cooling.dat' using 1:2 with linespoints lw 2 pt 7 lc rgb '#006d6b' title 'Cooling observations'
