set terminal pngcairo size 1000,650 enhanced font 'Arial,18'
set output '../../../../images/practical/pg-iv/lattice-dynamics/lattice-dispersion.png'
set title 'Dispersion of monoatomic and diatomic lattice analogues'
set xlabel 'Phase change per cell, qa (degree)'
set ylabel 'Normalised angular frequency'
set xrange [0:180]
set xtics 30
set grid
set key bottom right
plot 'lattice-dispersion.dat' using 1:2 with linespoints lw 2.5 pt 7 lc rgb '#0b6b6b' title 'monoatomic', \
     '' using 1:3 with linespoints lw 2.5 pt 5 lc rgb '#8f3e36' title 'diatomic acoustic', \
     '' using 1:4 with linespoints lw 2.5 pt 9 lc rgb '#b8862b' title 'diatomic optical'
