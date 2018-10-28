#! /bin/sh

usage()
{
   echo "$(basename $0): Some useful description"
   echo ""
   echo "-h : This usage information"
   echo "-n : Dry-run print commands instead of executing them"
   echo "-x : Enabling tracing of shell script"
}

while getopts 'nxhA:' argv
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
    #A) ARG="$OPTARG" ;;
    h)
	usage
	exit 0
    ;;
    esac
done
shift $(($OPTIND - 1))

echo "Do stuff based on options/and rest of arguments $*"
