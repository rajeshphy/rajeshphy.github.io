set terminal pngcairo size 1000,650 enhanced font 'Arial,18'
set output '../../../../images/practical/pg-ii/zener-diode-characteristics-stabilisation/zener-characteristic.png'
set title 'Reverse characteristic of the Zener diode'
set xlabel 'Reverse voltage (V)'
set ylabel 'Zener current (mA)'
set grid
set key top left
plot 'zener.dat' using 1:2 with linespoints lw 2.5 pt 7 ps 1.1 lc rgb '#0b6b6b' title 'Measured values'
