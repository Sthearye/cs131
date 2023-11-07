!/bin/bash 

BEGIN {
	FS = ","
	OFS = ","
}

NR == 1 {
    next 
}

$2 ~ /^"2019-08/ {
    passengers = $4
    tip = $14
    sum[passengers] += tip
    count[passengers]++
}

END { 
	for  (passengers in sum){
		avg = sum[passengers] / count[passengers]
		print passengers, avg
	}
}
