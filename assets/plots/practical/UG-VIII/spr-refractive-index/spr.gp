set terminal pngcairo size 1000,620 enhanced font 'Arial,18'
set output '../../../../images/practical/ug-viii/spr-refractive-index/spr.png'
set title 'SPR reflectance curve'
set xlabel 'Incidence angle (deg)'
set ylabel 'Normalised reflectance'
set grid
plot 'spr.dat' using 1:2 with linespoints lw 2 pt 7 lc rgb '#006d6b' title 'Measured reflectance'

