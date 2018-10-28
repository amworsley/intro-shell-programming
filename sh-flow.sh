#! /bin/sh

N=10
S=.5
usage()
{
   echo "$(basename $0) [options] <command> args ... "
   echo " Repeat a command and until it fails"
   echo ""
   echo "-h : This usage information"
   echo "-n : Dry-run print commands instead of executing them"
   echo "-x : Enabling tracing of shell script"
   echo "-r <N>: Number of times to repeat command (default $N)"
   echo "-s <S>: amount of time to sleep between commands (default $S secs)"
}

while getopts 'nxhr:s:' argv
do
    case $argv in
    n)
       echo "Dry-Run"
       DR=echo
    ;;
    x)
        echo "Enabling tracing"
        set -x
    ;;
    r) N="$OPTARG" ;;
    s) S="$OPTARG" ;;
    h)
	usage
	exit 0
    ;;
    esac
done
shift $(($OPTIND - 1))

C=0
while [ $C -lt $N ]; do
    C=$(($C + 1))
    echo "Try $C"
    if $DR $* ; then
	echo "Ok"
    else
	echo "Failed $?"
	break
    fi
    sleep $S 
done
case $C in
$N) echo "Ran '$*' $N times with no failures";;
*)
  echo "$* : Failed on try $C"
  exit 1
;;
esac
