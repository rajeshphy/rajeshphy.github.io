set terminal pngcairo size 1320,820 enhanced font "Georgia,22"
set output "assets/images/practical/ug-ii/parallel-lcr/parallel-lcr-graph.png"
set datafile commentschars "#"
set border linewidth 1.5 linecolor rgb "#2e2b27"
set grid xtics ytics linewidth 0.8 linecolor rgb "#ded8cc"
set key off
set xlabel "Frequency, f (Hz)"
set ylabel "Supply current, I (mA)"
set xrange [250:1350]
set yrange [0:46]
set xtics 300,100,1300
set ytics 0,10,40
set tics nomirror
set style line 1 lc rgb "#056c68" lw 3 pt 7 ps 1.4
set style line 2 lc rgb "#9b1c1c" dt 2 lw 1.8
set arrow from 800,0 to 800,6 nohead ls 2
set label 1 "anti-resonance" at 835,8 tc rgb "#3b3834"
plot "assets/plots/practical/ug-ii/parallel-lcr/parallel-lcr-data.dat" using 1:2 smooth csplines with lines ls 1, \
     "" using 1:2 with points ls 1
