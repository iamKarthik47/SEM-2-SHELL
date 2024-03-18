#multipication

if [ $# -ne 1 ]
then
   echo "Syntax error"
   exit 1
fi

i=1
while [ $i -le 10 ]
do
  echo "$i x $1 = `expr $i \* $1`"
  i=`expr $i + 1`
done
