echo "Enter x and n value"
read x n

if [ $n -eq 1 ]
then 
  m=`expr $x \* $x `
elif [ $n -eq 2 ]
then 
  m=`expr $x / $n `
elif [ $n -eq 3 ]
then 
  m=`expr $x \* 2 `
else
  m=`expr $x \* $n `

fi
y=`expr 1 + $m `
echo "value of y(x,n) "
echo $y