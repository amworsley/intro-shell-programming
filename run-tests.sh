#! /bin/sh
    testcases="tests.txt"
    echo "Running $testcases"
    echo "Running testcases from $testcases" > results
    F=0
    while read TC
    do
        C=${TC%#*}
        if [ ! "$C" ]; then
            continue
        fi
        if eval $C ; then
            echo $C : Passed >> results
        else
            echo $C : Failed >> results
            echo $C : Failed
            F=$(($F+1))
        fi
    done < $testcases
    echo "$(grep 'Passed$' results | wc -l) Passed $F Failed"
