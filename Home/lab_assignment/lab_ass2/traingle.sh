if [ $# -ne 3 ]
then
	echo "Invalid input!"
	exit
fi

a=$1
b=$2
c=$3

flag=1

if ! [ $((b + c)) -gt $a ]
then
	flag=0
elif ! [ $((a + c)) -gt $b ]
then
	flag=0
elif ! [ $((a + b)) -gt $c ]
then
	flag=0
fi

if [ $flag -eq 0 ]
then
	echo "Triangle is not formable."
	exit
else
	echo "Triangle is formable."
	echo -n "Area: "
	echo  "`expr $((a + b + c)) / 2`.`expr $((((a + b + c) % 2) * 5))`"
fi