set terminal pngcairo size 1320,820 enhanced font "Georgia,22"
set output "assets/images/practical/ug-i/maxwells-needle/maxwells-needle-graph.png"

set datafile commentschars "#"
set border linewidth 1.5 linecolor rgb "#2e2b27"
set grid xtics ytics linewidth 0.8 linecolor rgb "#ded8cc"
set key at 3.2,4.85 center
set xlabel "Observation number"
set ylabel "Time period, T (s)"
set xrange [0.5:5.5]
set yrange [3.9:5.8]
set xtics 1,1,5
set ytics 4.0,0.4,5.8
set tics nomirror
set format y "%.1f"

set style line 1 lc rgb "#056c68" lw 3 pt 7 ps 1.4
set style line 2 lc rgb "#9b1c1c" lw 3 pt 5 ps 1.4

plot \
  "assets/plots/practical/ug-i/maxwells-needle/maxwells-needle-data.dat" using 1:2 with linespoints ls 1 title "outer heavy cylinders", \
  "" using 1:3 with linespoints ls 2 title "inner heavy cylinders"
