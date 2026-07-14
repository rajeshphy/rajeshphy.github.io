set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/pg-iii/four-probe-band-gap/band-gap.png'
set title 'Band gap from four-probe measurements'
set xlabel '1000/T (K^{-1} x 1000)'
set ylabel 'log_{10}(conductivity)'
set grid
plot 'band-gap.dat' using 1:2 with linespoints lw 2 pt 7 lc rgb '#8f3e36' title 'Measured values'
