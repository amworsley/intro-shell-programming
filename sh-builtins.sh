#! /bin/sh
echo "Hi $(whoami), enter minimum size in K to find and directory"
read SZK dir
if [ ! -d $dir ]; then
    echo "Sorry $dir is *NOT* a directory: $dir"
    exit 1
fi
echo "Looking for files $(($SZK*1024)) bytes or bigger in $dir"
find $dir -type f -size +${SZK}k -exec du -h \{} \;
