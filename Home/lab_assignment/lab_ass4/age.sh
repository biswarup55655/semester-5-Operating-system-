clear
read -p "Enter your Date of Birth(DD/MM/YYYY): " dob
dTemp=$(date +%d)
mTemp=$(date +%m)
yTemp=$(date +%Y)

temp=`expr $mTemp - 1`
countDays=$(date -d "`expr $temp % 12 + 1`/1 - 1 days" +%d)
if [ ${dob:0:2} -gt $dTemp ]
then
  dTemp=`expr $dTemp + $countDays`
  mTemp=`expr $mTemp - 1`
fi
if [ ${dob:3:2} -gt $mTemp ]
then
  yTemp=`expr $yTemp - 1`
  mTemp=`expr $mTemp + 12`
fi
y=`expr $yTemp - ${dob:6:4}`
m=`expr $mTemp - ${dob:3:2}`
d=`expr $dTemp - ${dob:0:2}`
echo "Your age is: $y years $m months and $d days"