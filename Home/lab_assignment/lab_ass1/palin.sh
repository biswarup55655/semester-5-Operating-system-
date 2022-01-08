echo "Enter the number"
read n
num=0
temp=$n
while [ $n -gt 0 ]
do
num=$(expr $num \* 10)
k=$(expr $n % 10)
num=$(expr $num + $k)
n=$(expr $n / 10)
done
if [ $num -eq $temp ]
then
echo palindrome
else
echo not palindrome
fi