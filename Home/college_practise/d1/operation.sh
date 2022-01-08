clear
echo Enter two values
read x
read y
s=`expr $x + $y`
d=`expr $x - $y`
m=`expr $x \* $y`
q=`expr $x / $y`
r=`expr $x % $y` 
echo SUM = $s , DIFFERENCE = $d , PRODUCT = $m , QUOTIENT = $q , REMAINDER = $r