set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/pg-iii/dielectric-constant-capacitance/dielectric-constant.png'
set title 'Measured dielectric constants'
set xlabel 'Sample number: glass, mica, oil, water'
set ylabel 'Relative permittivity'
set xtics ('glass' 1, 'mica' 2, 'oil' 3, 'water' 4)
set boxwidth 0.55
set style fill solid 0.75
set grid ytics
plot 'dielectric-constant.dat' using 1:2 with boxes lc rgb '#075f5b' title 'epsilon_r'
