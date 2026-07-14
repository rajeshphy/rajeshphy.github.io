set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/pg-iii/planck-constant-led/planck-led.png'
set title "Planck's constant from LED threshold voltage"
set xlabel 'Frequency (10^{14} Hz)'
set ylabel 'Threshold voltage (V)'
set grid
f(x)=a*x+b
a=0.5; b=-0.5
fit f(x) 'planck-led.dat' using 1:2 via a,b
plot 'planck-led.dat' using 1:2 with points pt 7 ps 1.2 lc rgb '#075f5b' title 'LED readings', f(x) with lines lw 2 lc rgb '#8f3e36' title 'Best-fit line'
