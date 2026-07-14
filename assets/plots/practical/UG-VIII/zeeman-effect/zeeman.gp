set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/ug-viii/zeeman-effect/zeeman.png'
set title 'Zeeman splitting versus magnetic field'
set xlabel 'Magnetic field (T)'
set ylabel 'Wavenumber splitting (m^{-1})'
set grid
plot 'zeeman.dat' using 1:2 with linespoints lw 2 pt 7 lc rgb '#8f3e36' title 'Measured splitting'

