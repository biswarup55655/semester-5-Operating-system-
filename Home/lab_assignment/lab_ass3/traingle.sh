clear 
echo "Enter no of rows: "
read n
row=10
col=10
for(( i=1;i<=n;i++ ))
do
   tput cup $row $col
   echo "*"
   row=`expr $row + 1`
   col=`expr $col - 2`
done
ind=$col
row=10
col=10
for(( i=1;i<=n-1;i++ ))
do
   row=`expr $row + 1`
   col=`expr $col + 2`
   tput cup $row $col
   echo "*"
done
for(( i=ind+2;i<col;i=i+2 ))
do
   tput cup $row $i
   echo "*"
done
