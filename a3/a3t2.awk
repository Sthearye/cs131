!/bin/bash

BEGIN{
	FS = ","
}
NR > 1 {
	pickup = $8
	dropoff = $9
	total = $17
	sum[pickup, dropoff] += total
	count[pickup, dropoff]++
}
END{
	max_avg = 0
	max_pair = ""

	for (pair in sum) {
		avg = sum[pair] / count[pair]
		if ( avg > max_avg) {
			max_avg = avg
			max_pair = pair
		}
	}
	printf "Highest average total amount location pair: " max_pair, max_avg
}
