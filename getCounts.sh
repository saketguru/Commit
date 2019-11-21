 #!/bin/bash

array=(`ls $1`)
declare -a Files
name=0



for i in "${array[@]}"
do
	#echo $i
	
	if [ $i = "getCounts.sh" ]; then
		continue;
        fi
	if [ $i = "getCounts.sh~" ]; then
		continue;
        fi
	if [ $i = "Result.txt" ]; then
		continue;
        fi
	count=$(cat $1/$i | grep "[A-Z]*Count :" | grep "[0-9]*" -o)
	name=$(echo $i | grep "[0-9]*" -o )
	echo -e $count "\t\t\t"  $name.txt >> temp.txt
	
done

cat temp.txt | sort -g -r > temp1.txt
echo -e "Count \t\t\t"  "Mined_Motifs/FileName" > $2.txt
echo >> $2.txt
cat temp1.txt >> $2.txt
rm temp.txt
rm temp1.txt

