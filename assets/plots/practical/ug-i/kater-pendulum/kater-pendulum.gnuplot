set terminal pngcairo size 1320,820 enhanced font "Georgia,22"
set output "assets/images/practical/ug-i/kater-pendulum/kater-pendulum-graph.png"

set datafile commentschars "#"
set border linewidth 1.5 linecolor rgb "#2e2b27"
set grid xtics ytics linewidth 0.8 linecolor rgb "#ded8cc"
set key top center
set xlabel "Movable mass position, x (cm)"
set ylabel "Time period, T (s)"
set xrange [17:27]
set yrange [1.96:2.04]
set xtics 18,2,26
set ytics 1.96,0.02,2.04
set tics nomirror
set format y "%.3f"

set style line 1 lc rgb "#056c68" lw 3 pt 7 ps 1.4
set style line 2 lc rgb "#9b1c1c" lw 3 pt 5 ps 1.4
set style line 3 lc rgb "#66615a" dt 2 lw 1.8
set arrow from 22.5,1.96 to 22.5,2.04 nohead ls 3
set label 1 "equal-period position" at 22.75,1.972 tc rgb "#3b3834"

plot \
  "assets/plots/practical/ug-i/kater-pendulum/kater-pendulum-data.dat" using 1:2 with linespoints ls 1 title "about K_1", \
  "" using 1:3 with linespoints ls 2 title "about K_2"
