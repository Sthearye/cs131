!/bin/bash

BEGIN {
        FS = ","
        OFS = ","
}

NR == 1 {
    next
}

$2 ~ /^"2019-08/ {
    distance = $5
    total = $17
    sum[distance] += total
    count[distance]++
}

END {
        for  (distance in sum){
                avg = sum[distance] / count[distance]
                print distance, avg
        }
}

