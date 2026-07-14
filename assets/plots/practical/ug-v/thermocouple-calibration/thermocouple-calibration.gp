set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/ug-v/thermocouple-calibration/thermocouple-calibration.png'
set title 'Thermocouple calibration curve'
set xlabel 'Temperature (deg C)'
set ylabel 'Thermo-emf (mV)'
set grid
set key left top
plot 'thermocouple-calibration.dat' using 1:2 with linespoints lw 2 pt 7 lc rgb '#006d6b' title 'Observed calibration'
