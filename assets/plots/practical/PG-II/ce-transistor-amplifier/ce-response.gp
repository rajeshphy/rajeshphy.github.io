set terminal pngcairo size 1000,650 enhanced font 'Arial,18'
set output '../../../../images/practical/pg-ii/ce-transistor-amplifier/ce-frequency-response.png'
set title 'Frequency response of the CE amplifier'
set xlabel 'Frequency (kHz)'
set ylabel 'Voltage gain, A_v'
set logscale x
set grid
set key top left
plot 'ce-response.dat' using 1:2 with linespoints lw 2.5 pt 7 ps 1.1 lc rgb '#0b6b6b' title 'Measured gain'
