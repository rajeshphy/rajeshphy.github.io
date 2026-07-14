set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/pg-iii/am-modulation-index/am-wave.png'
set title 'Amplitude-modulated wave with m = 0.60'
set xlabel 'Time (ms)'
set ylabel 'Amplitude (arb. unit)'
set grid
set samples 1600
plot (1+0.60*cos(2*pi*1*x))*cos(2*pi*100*x) with lines lw 1.5 lc rgb '#075f5b' title 'AM wave', (1+0.60*cos(2*pi*1*x)) with lines dt 2 lc rgb '#8f3e36' title 'Upper envelope', -(1+0.60*cos(2*pi*1*x)) with lines dt 2 lc rgb '#8f3e36' notitle
