set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/ug-vi/dielectric-constant-frequency/dielectric-frequency.png'
set title 'Dielectric constant versus frequency'
set xlabel 'Frequency (kHz)'
set ylabel 'Relative dielectric constant'
set logscale x
set grid
plot 'dielectric-frequency.dat' using 1:2 with linespoints lw 2 pt 7 lc rgb '#006d6b' title 'Measured dielectric constant'

