#DISPLAY THE CONTENTS OF A FILE IN REVERSE ORDER
set -xv
if [ $# -ne 1 ]
then
echo "Syntax error <0>[<file>]"
exit 1
fi

if [ -d $1 ] 
then
echo "$1 is a directory"
exit 2
fi


cp $1 file
l=`cat file | wc -l` 
revfname="$1.rev"
rm $revfname 2>/dev/null
while [ $l -ge 1 ]
do
tail -n 1 file >> $revfname
l=`expr $l - 1`
head -n $l file > temp
mv temp file
done


