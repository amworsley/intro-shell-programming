#! /bin/sh
set -x
COUNT=2
echo $COUNT
V=${1:-"hello"}
B=${2:-"world"}
C=${B%ef}
#C=${B/a*/def}
echo A=$A B=$B REST=$*
shift 2
echo Now REST=$*

