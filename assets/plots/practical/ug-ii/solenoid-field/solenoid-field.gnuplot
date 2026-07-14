set terminal pngcairo size 1320,820 enhanced font "Georgia,22"
set output "assets/images/practical/ug-ii/solenoid-field/solenoid-field-graph.png"
set datafile commentschars "#"
set border linewidth 1.5 linecolor rgb "#2e2b27"
set grid xtics ytics linewidth 0.8 linecolor rgb "#ded8cc"
set key off
set xlabel "Position from centre, x (cm)"
set ylabel "Magnetic field, B (mT)"
set xrange [-11:11]
set yrange [0:3.5]
set xtics -10,2,10
set ytics 0,0.5,3.5
set tics nomirror
set style line 1 lc rgb "#056c68" lw 3 pt 7 ps 1.4
plot "assets/plots/practical/ug-ii/solenoid-field/solenoid-field-data.dat" using 1:2 smooth csplines with lines ls 1, \
     "" using 1:2 with points ls 1
