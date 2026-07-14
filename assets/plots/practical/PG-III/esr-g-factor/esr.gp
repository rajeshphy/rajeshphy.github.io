set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/pg-iii/esr-g-factor/esr.png'
set title 'ESR resonance field versus microwave frequency'
set xlabel 'Frequency (GHz)'
set ylabel 'Resonance field (mT)'
set grid
plot 'esr.dat' using 1:2 with linespoints lw 2 pt 7 lc rgb '#8f3e36' title 'Resonance field'

