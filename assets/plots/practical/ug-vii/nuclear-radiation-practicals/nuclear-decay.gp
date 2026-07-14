set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/ug-vii/nuclear-radiation-practicals/nuclear-decay.png'
set title 'Radioactive decay curve'
set xlabel 'Time (s)'
set ylabel 'Count rate (counts per minute)'
set grid
plot 'nuclear-decay.dat' using 1:2 with linespoints lw 2 pt 7 lc rgb '#8f3e36' title 'Corrected count rate'

