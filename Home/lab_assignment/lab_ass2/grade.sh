clear
echo "Enter a number" 
read y
case $y in
100|9[0-9]) echo "O";;
8[0-9]) echo "E";;
7[0-9]) echo "A";;
6[0-9]) echo "B";;
5[0-9]) echo "C";;
*) echo "F";;
esac