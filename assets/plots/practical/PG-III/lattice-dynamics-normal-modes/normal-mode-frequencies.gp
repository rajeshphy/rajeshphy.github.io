set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/pg-iii/lattice-dynamics-normal-modes/normal-mode-frequencies.png'
set title 'Normal-mode frequencies of a coupled oscillator chain'
set xlabel 'Mode number'
set ylabel 'Relative frequency'
set xtics 1
set grid
plot 'normal-mode-frequencies.dat' using 1:2 with linespoints lw 2 pt 7 lc rgb '#075f5b' title 'Measured modes'
