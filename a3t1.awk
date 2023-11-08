!/bin/bash 

BEGIN {
	FS = ","
}

NR > 1 {
	loc = $8
	total = $17
	sum[loc] += total
	count[loc]++
}

END {
	for (loc in sum) {
		avg = sum[loc] / count[loc]
		printf "%f,%s\n", avg, loc
	}
}
