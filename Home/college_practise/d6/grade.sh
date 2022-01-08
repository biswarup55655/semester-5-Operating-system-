clear
file1=$1
echo $file1
cat $file1
echo
if [ -f $file1 ]
then
  exec<$file1
  while read line
  do
    set `echo $line`
    echo $1 $2 $3
    if [ $3 -ge "80" ]
    then
      echo $1 $2 $3 grade 'A'>>out1
    elif [ $3 -ge "70" ] && [ $3 -le "79" ]
    then
      echo $1 $2 $3 grade 'B'>>out1
    elif [ $3 -ge "60" ] && [ $3 -le "69" ]
    then
      echo $1 $2 $3 grade 'C'>>out1
    elif [ $3 -ge "50" ] && [ $3 -le "59" ]
    then
      echo $1 $2 $3 grade 'D'>>out1
    elif [ $3 -ge "49" ]
    then
      echo $1 $2 $3 grade 'F'>>ou1
    else 
      echo "Results are not correct"
    fi
  done

fi