set terminal pngcairo size 1320,820 enhanced font "Georgia,22"
set output "assets/images/practical/ug-i/searles-method/searles-method-graph.png"

set datafile commentschars "#"
set border linewidth 1.5 linecolor rgb "#2e2b27"
set grid xtics ytics linewidth 0.8 linecolor rgb "#ded8cc"
set key off
set xlabel "Load, M (kg)"
set ylabel "Extension, x (mm)"
set xrange [0:3.2]
set yrange [0:1.25]
set xtics 0,0.5,3
set ytics 0,0.2,1.2
set tics nomirror
set format y "%.1f"

f(x)=m*x+c
m=0.38
c=0.01
fit f(x) "assets/plots/practical/ug-i/searles-method/searles-method-data.dat" using 1:2 via m,c

set label 1 sprintf("slope = %.3f mm kg^{-1}", m) at 1.35,0.22 tc rgb "#3b3834"
set style line 1 lc rgb "#056c68" lw 3
set style line 2 lc rgb "#9b1c1c" pt 7 ps 1.4

plot \
  f(x) with lines ls 1, \
  "assets/plots/practical/ug-i/searles-method/searles-method-data.dat" using 1:2 with points ls 2
