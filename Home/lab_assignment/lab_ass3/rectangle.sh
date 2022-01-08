clear
read -p "Enter the size of the square: " n
for (( i=1;i<=n;i++ ))
do
   for(( j=1;j<=n;j++ ))
   do
      if [ $i -eq 1 ] || [ $i -eq $n ] || [ $j -eq 1 ] || [ $j -eq $n ]
      then
          tput cup $i $j 
          echo "*"
      fi
   done
done