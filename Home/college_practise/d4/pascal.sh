clear
fact() {
  n=$1
  if [ $n -eq 0 -o $n -eq 1 ]
  then
    echo 1
  else
    echo $(( $n * `fact $(($n - 1))` ))
  fi
}
pascal() {
  n=$1
  for((i=0;i<n;i++))
  {
    for((k=0;k<n-i;k++))
    {
      printf " "
    }
    for((j=0;j<=i;j++))
    {
      a=`fact $i`
      b=`fact $j`
      c=`expr $i - $j`
      d=`fact $c`
      e=`expr $b \* $d`
      r=`expr $a / $e`
      # r=`echo "scale=0; a/(b*d)" | bc`
      printf "$r "
    }
    printf "\n"
  }
}
echo "enter no. of rows"  
read n
pascal $n
