clear
read -p "Enter a date(DD/MM/YYYY): " D
d=${D:0:2}
m=${D:3:2}
Y=${D:6:4}
if date -d "$Y-$m-$d" &> /dev/null
then
 echo $D is a valid date
else 
  echo $D is an invalid date
fi