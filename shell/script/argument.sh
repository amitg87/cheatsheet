#!/bin/bash -x
echo -e "Argument count with \$#" $#;
echo -e "All arguments \$*" $*;
while [ "$#" -gt 0 ]
do
        echo $1
        shift
done
