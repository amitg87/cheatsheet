#!/bin/bash

fibonacci() {
    n=${1:?"Supply input as the first parameter."}
    if [ $n -le 1 ]; then 
        echo $n
    else
        l=`fibonacci $((n-1))`
        r=`fibonacci $((n-2))`
        echo $((l + r))
    fi
}

for i in `seq 1 10`
do
    result=`fibonacci $i`
    echo "i=$i result=$result"
done
