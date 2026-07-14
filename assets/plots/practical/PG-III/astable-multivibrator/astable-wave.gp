set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/pg-iii/astable-multivibrator/astable-waveform.png'
set title 'Complementary outputs of an astable multivibrator'
set xlabel 'Time (ms)'
set ylabel 'Logic level'
set yrange [-0.2:1.2]
set ytics (0,1)
set grid
plot 'astable-wave.dat' using 1:2 with steps lw 2 lc rgb '#075f5b' title 'Q1 output', 'astable-wave.dat' using 1:3 with steps lw 2 lc rgb '#8f3e36' title 'Q2 output'
