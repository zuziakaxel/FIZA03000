set terminal png
set grid
set output "wykres1.png"
set xlabel "l [mm]"
set ylabel "T [s]"
set xrange [0:240]
set yrange [0:1]
#fit a*x*x*x+b*x*x+c*x+d "data" via a,b,c,d
#fit a*sqrt(b*x) "data" via a,b
#f(x)=a*sqrt(b*x)
f(x)=6.28*sqrt(0.0001*x)
#f(x)=a*x*x*x + b*x*x + c*x + d
plot "data" using 1:2 w p notitle pt 7, f(x)
