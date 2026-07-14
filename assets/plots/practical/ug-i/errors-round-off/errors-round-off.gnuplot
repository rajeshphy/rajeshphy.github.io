set terminal pngcairo size 1320,820 enhanced font "Georgia,22"
set output "assets/images/practical/ug-i/errors-round-off/errors-round-off-graph.png"

set datafile commentschars "#"
set border linewidth 1.5 linecolor rgb "#2e2b27"
set grid xtics ytics linewidth 0.8 linecolor rgb "#ded8cc"
set key top right
set xlabel "Decimal places retained"
set ylabel "Absolute error"
set xrange [0.8:4.2]
set yrange [0:0.05]
set xtics 1,1,4
set ytics 0,0.01,0.05
set tics nomirror
set format y "%.3f"

set style line 1 lc rgb "#056c68" lw 3 pt 7 ps 1.4
set style line 2 lc rgb "#9b1c1c" lw 3 pt 5 ps 1.4

plot \
  "assets/plots/practical/ug-i/errors-round-off/errors-round-off-data.dat" using 1:2 with linespoints ls 1 title "truncation", \
  "" using 1:3 with linespoints ls 2 title "rounding"
