clear
echo "a)Display contents of a file"
echo "b)Display list of currently logged users"
echo "c)Present working directory & files under current directory"
echo "d)Display list of files"
echo "e)Display process of users"
echo "f)Display today's date"
echo "g)Display calender of a year"
echo "h)exit"
echo
while true
do
  read -p "Enter the number for the option: " n
  case $n in
  1)read -p "Enter the file name: " file
    if [ -f "$file" ]
    then
      cat $file
      echo
    else
      echo File not found
    fi;;
  2)echo List of currently logged users:
    who;;
  3)echo -n "Present Working directory: "
    pwd
    echo List of files:
    ls;;
  4)echo List of files:
    ls;;
  5)echo List of process of users:
    ps -A;;
  6)echo -n "Today's date: "
    date +"%d/%m/%y";;
  7)read -p "Enter a year: " y
    cal $y;;
  8)exit;;
  *)echo Please check your input and try again!;;
  esac
done