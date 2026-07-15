set terminal pngcairo size 1000,760 enhanced font 'Arial,17'
set output '../../../../images/practical/pg-iv/waveform-storage-amplifier/generated-and-held-waveforms.png'
set multiplot layout 2,1 title 'Generated and stored waveforms'
set xrange [0:2]
set yrange [-1.25:1.25]
set xlabel 'Time (normalised period)'
set ylabel 'Amplitude'
set grid
square(x)=sin(2*pi*x)>=0 ? 1 : -1
triangle(x)=2/pi*asin(sin(2*pi*x))
plot square(x) with lines lw 2.2 lc rgb '#8f3e36' title 'Schmitt output', \
     triangle(x) with lines lw 2.2 lc rgb '#0b6b6b' title 'integrator output'
set xrange [0:10]
set yrange [-1.25:1.25]
set xlabel 'Time (ms)'
set ylabel 'Voltage (V)'
plot 'sample-hold.dat' using 1:2 with linespoints lw 1.8 pt 6 lc rgb '#0b6b6b' title 'input', \
     '' using 1:3 with steps lw 2.4 lc rgb '#b8862b' title 'held output'
unset multiplot
