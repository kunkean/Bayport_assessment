#!/bin/bash/
echo -n 'Enter a number: '
read input
if [[ -n ${input//[0-9]/} ]]; then
    echo "Contains letters!"
    exit
fi
echo $input
for ((i=$input; $i<=$input; i++))
do
touch directories.list
ls  -Shltra > directories.list
echo "$(echo -n "line one's line" $'\n'; cat directories.list)" > directories.list
done
