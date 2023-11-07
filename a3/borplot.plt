set terminal svg
set output 'a3t3.svg'

set boxwidth 0.6 relative
set style fill solid 1.0 
set style histogram 

set datafile separator ','

set title "Correlation Between Number of Passengers and Average Tip Amount (August 2019)"
set xlabel "Number of Passengers"
set ylabel "Average Tip Amount"

set yrange[0:250]

plot 'passenger_tip.dat' using 2:xtic(1) with boxes title "Tip Amount"
