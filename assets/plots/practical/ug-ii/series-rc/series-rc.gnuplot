set terminal pngcairo size 1320,820 enhanced font "Georgia,22"
set output "assets/images/practical/ug-ii/series-rc/series-rc-graph.png"
set datafile commentschars "#"
set border linewidth 1.5 linecolor rgb "#2e2b27"
set grid xtics ytics linewidth 0.8 linecolor rgb "#ded8cc"
set key off
set xlabel "Frequency, f (Hz)"
set ylabel "Current, I (mA)"
set logscale x
set xrange [80:12000]
set yrange [0:5.4]
set xtics ("100" 100, "200" 200, "500" 500, "1k" 1000, "2k" 2000, "5k" 5000, "10k" 10000)
set ytics 0,1,5
set tics nomirror
set style line 1 lc rgb "#056c68" lw 3 pt 7 ps 1.4
plot "assets/plots/practical/ug-ii/series-rc/series-rc-data.dat" using 1:2 with linespoints ls 1
