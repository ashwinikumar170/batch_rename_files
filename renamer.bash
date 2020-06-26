#!/bin/bash
#	pass prefix as the first argument
#	bash renamer.bash example_prefix

ls | grep -i .jpg &> imagefilelist.txt

export i=1;

while IFS= read -r line;
do 
	mv -v "${line}" $1_"${i}".jpg
	i="$[$i + 1]"
done < imagefilelist.txt
rm -f imagefilelist.txt
