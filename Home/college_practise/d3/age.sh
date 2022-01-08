echo "Enter the date of birth(dd/mm/yyyy)"
read dob
IFS="/"
set $dob
d=$1
m=$2
y=$3
d1=`date +%d`
m1=`date +%m`
y1=`date +%Y`
dd=`expr $d1 - $d`
dm=`expr $m1 - $m`
dy=`expr $y1 - $y`

if [ $dd -lt 0 ]
then
  dm=`expr $dm - 1`
  dd=`expr $dd + 30`
fi
if [ $dm -lt 0 ]
then 
  dy=`expr $dy -1`
  dm=`expr $dm +12`
fi

echo "age is $dy years and $dm months and $dd days old"