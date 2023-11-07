set style fill transparent solid 0.2 noborder

set datafile separator ','

set terminal svg
set out 'a3t4.svg'

#set dummy u, v
#set key fixed right top vertical Right noreverse enhanced #autotitle box lt black linewidth 1.000 dashtype solid
#set parametric
set title "Correlation between the travel distance and the total amount paid in August 2019" 
set xlabel "Travel Distance"
set ylabel "Total Amount" 
#set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front  noinvert bdefault
NO_ANIMATION = 1
set autoscale x
set autoscale y

plot 'distance_total.dat' using 1:2 with circles lc rgb 'red'
