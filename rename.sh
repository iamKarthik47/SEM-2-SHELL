#set -vx

if [ $# -gt 1 ]
then
echo "Syntax is <0> or <$0>"
exit 1
fi

if [ $# -ne 0 ]
then
cd $1
fi
for i in *
do
if [ -f $i ]
then
mv $i $i.$$
fi
done
echo "file name changed to filename.$$"

