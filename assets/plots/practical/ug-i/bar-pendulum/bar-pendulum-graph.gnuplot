set terminal pngcairo size 1320,820 enhanced font "Georgia,22"
set output "assets/images/practical/ug-i/bar-pendulum/bar-pendulum-graph.png"

set datafile commentschars "#"
set border linewidth 1.5 linecolor rgb "#2e2b27"
set grid xtics ytics mxtics mytics linewidth 0.8 linecolor rgb "#ded8cc"
set key off
set xlabel "Distance from C.G., l (cm)" offset 0,-0.2
set ylabel "Time period, T (s)" offset -0.8,0
set xrange [-50:50]
set yrange [1.30:2.45]
set xtics -50,10,50
set ytics 1.30,0.20,2.50
set mxtics 2
set mytics 2
set tics nomirror
set format y "%.2f"

set style line 1 lc rgb "#056c68" lw 3
set style line 2 lc rgb "#9b1c1c" pt 7 ps 1.2
set style line 3 lc rgb "#66615a" dt 2 lw 1.8
set style line 4 lc rgb "#0f766e" pt 7 ps 1.55

set arrow from -25,1.419 to 25,1.419 nohead ls 3
set arrow from 20,1.30 to 20,1.436 nohead ls 3
set arrow from 31.2,1.30 to 31.2,1.436 nohead ls 3
set arrow from 20,1.436 to 31.2,1.436 nohead ls 3

set label 1 "T_{min} = 1.419 s" at 27,1.345 tc rgb "#3b3834"
set label 2 "k = 25.0 cm" at -10,1.47 tc rgb "#3b3834"
set label 3 "T = 1.436 s" at 33,1.48 tc rgb "#3b3834"
plot \
  "assets/plots/practical/ug-i/bar-pendulum/bar-pendulum-data.dat" using 1:2 smooth csplines with lines ls 1, \
  "" using 1:2 with points ls 2, \
  "-" using 1:2 with points ls 4
-25 1.419
25 1.419
20 1.436
31.2 1.436
e
