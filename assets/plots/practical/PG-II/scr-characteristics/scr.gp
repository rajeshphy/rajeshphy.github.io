set terminal pngcairo size 1000,650 enhanced font 'Arial,18'
set output '../../../../images/practical/pg-ii/scr-characteristics/scr-gate-control.png'
set title 'Gate control of SCR firing voltage'
set xlabel 'Gate current, I_G (mA)'
set ylabel 'Firing voltage, V_{BO} (V)'
set grid
set key top right
plot 'scr.dat' using 1:2 with linespoints lw 2.5 pt 7 ps 1.1 lc rgb '#8f3e36' title 'Measured values'
