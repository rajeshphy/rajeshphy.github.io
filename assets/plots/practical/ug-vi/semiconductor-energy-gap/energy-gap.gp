set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/ug-vi/semiconductor-energy-gap/energy-gap.png'
set title 'Semiconductor energy-gap plot'
set xlabel '1/T (K^{-1})'
set ylabel 'log10(Is)'
set grid
plot 'energy-gap.dat' using 1:2 with linespoints lw 2 pt 7 lc rgb '#006d6b' title 'Reverse saturation current'

