set terminal pngcairo size 1000,650 enhanced font 'Arial,18'
set output '../../../../images/practical/pg-ii/mosfet-characteristics/mosfet-transfer.png'
set title 'Enhancement MOSFET transfer characteristic'
set xlabel 'Gate-source voltage, V_{GS} (V)'
set ylabel 'Drain current, I_D (mA)'
set grid
set key top left
plot 'mosfet.dat' using 1:2 with linespoints lw 2.5 pt 7 ps 1.1 lc rgb '#8f3e36' title 'V_{DS} = 6 V'
