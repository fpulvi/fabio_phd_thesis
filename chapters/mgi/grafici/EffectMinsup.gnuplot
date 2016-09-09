set terminal postscript eps "Arial" 12
set output 'EffectMinsup.eps'
set size 0.5,0.5
set xlabel "min_sup%" 
set ylabel "Number of MGIs" 
set key below
#set xtics 0.01


plot "EffectMinsup.dat" using 1:4 title "max_neg_cor=0.2, min_pos_cor=0.3" with linespoints lw 2, "EffectMinsup.dat" using 1:3 title "max_neg_cor=0.1, min_pos_cor=0.3" with linespoints lw 2, "EffectMinsup.dat" using 1:2 title "max_neg_cor=0.2, min_pos_cor=0.4" with linespoints lw 2

