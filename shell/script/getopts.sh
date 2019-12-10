#!/bin/bash
USAGE="Usage: `basename $0` [-v] [-f filename] [-o] [-h]";
VERBOSE=false
while getopts f:o:vh OPTION ;
do
     case "$OPTION" in
          f)
               INFILE="$OPTARG"
               ;;
          o)
               OUTFILE="$OPTARG"
               ;;
          v)
               VERBOSE=true
               ;;
          h)
               echo "$USAGE"
               ;;
          ?)
               echo "$USAGE"
               exit 1
               ;;
     esac
done

echo $OPTIND

shift `echo "$OPTIND - 1" | bc`
#shift $(($OPTIND-1))

echo "Infile: " $INFILE
echo "Outfile: " $OUTFILE
echo "Verbose: " $VERBOSE
