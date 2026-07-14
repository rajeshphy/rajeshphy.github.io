set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/pg-i/solar-cell-characteristics/solar-cell.png'
set title 'Illuminated solar-cell I-V characteristic'
set xlabel 'Voltage (V)'
set ylabel 'Current (mA)'
set grid
plot 'solar-cell.dat' using 1:2 with linespoints lw 2 pt 7 lc rgb '#006d6b' title 'Illuminated cell'

