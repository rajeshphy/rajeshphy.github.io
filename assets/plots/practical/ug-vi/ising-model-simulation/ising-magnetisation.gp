set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/ug-vi/ising-model-simulation/ising-magnetisation.png'
set title 'Ising-model magnetisation versus temperature'
set xlabel 'Temperature T (J/k_B)'
set ylabel 'Mean magnetisation per spin'
set grid
plot 'ising-magnetisation.dat' using 1:2 with linespoints lw 2 pt 7 lc rgb '#8f3e36' title 'Monte Carlo result'

