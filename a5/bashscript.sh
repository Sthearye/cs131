#!/bin/bash

function totalcrimes() { cat $1 | tr -s ',' | \
csvcut -c "Case Incident Type", $2 | \
awk -F ',' {total +=2 } END {print total}' ;}

IFS='' read -r fields < $1
FRIST=1
CRIME MAX=99999
IFS=","
for i in $fields
do
        if [ $FIRST -eq 1 ]
        then
                FIRST=0
        else
                totalcrime=$(totalcrimes $1 $i)
                echo "$i crimes = $totalcrime"
                if [ $totalcrime -lt $CRIME MAX ]; then
                        bestcity=$1
                        CRIME MAX=$totalcrime
                fi
        fi
done
echo "The city was: $bestcity, with total number of crimes = $CRIME MAX"

~                                                                                 
