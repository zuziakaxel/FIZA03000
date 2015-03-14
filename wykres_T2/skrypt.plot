set terminal png
set grid
set output "wykres2.png"
set xlabel "l [mm]"
set ylabel "T^2 [s^2]"
set xrange [0:240]
set yrange [0:1]

fit a*x "data" via a
f(x)=a*x

plot "data" using 1:2 w p notitle pt 7, f(x) notitle
