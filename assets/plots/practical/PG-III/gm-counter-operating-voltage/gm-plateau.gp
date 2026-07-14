set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/pg-iii/gm-counter-operating-voltage/gm-plateau.png'
set title 'GM counter plateau curve'
set xlabel 'Applied voltage (V)'
set ylabel 'Corrected count rate (counts s^{-1})'
set grid
plot 'gm-plateau.dat' using 1:2 with linespoints lw 2 pt 7 lc rgb '#075f5b' title 'Count rate'
