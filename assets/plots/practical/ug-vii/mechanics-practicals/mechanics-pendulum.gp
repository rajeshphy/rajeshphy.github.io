set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/ug-vii/mechanics-practicals/mechanics-pendulum.png'
set title 'Simple pendulum: time period versus length'
set xlabel 'Length (m)'
set ylabel 'Time period (s)'
set grid
plot 'mechanics-pendulum.dat' using 1:2 with linespoints lw 2 pt 7 lc rgb '#006d6b' title 'Observed values'

