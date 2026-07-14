set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/ug-vii/electromagnetism-practicals/electromagnetism-field.png'
set title 'Magnetic field of the solenoid'
set xlabel 'Current (A)'
set ylabel 'Magnetic field (mT)'
set grid
plot 'electromagnetism-field.dat' using 1:2 with linespoints lw 2 pt 7 lc rgb '#006d6b' title 'Measured field'

