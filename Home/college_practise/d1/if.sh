clear
echo ENTER A NUMBER
read x
if [ $x -gt 0 ];then
  echo $x is a positive integer.
elif [ $x -lt 0 ];then
  echo $x is a negative integer.
elif [ $x -eq 0 ]
then
  echo $x is Zero.
else
  echo $x is not a number.
fi