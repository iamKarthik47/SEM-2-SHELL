#Message good morning with username
hour=`date +%H` 
if [ $hour -lt 12 ]
then
echo "HELLO $USER  Good Morning"

elif [ $hour -le 16 ]
then
 echo "Hello $USER , GOOD AFTERNOON"
elif [ $hour -lt 20 ]
then
echo " HELLO $USER , Good Evening "
else
echo " HELLO $USER Good Night "
fi
 






