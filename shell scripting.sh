#!/bin/bash
# Cem Anaral

number_of_variables=$1

# Creates an empty textfile
: > textfile.txt

# Gets the contents of variables
# and writes them to textfile.txt
echo Please enter the contents of the variables
for (( i=0; i<number_of_variables; i++  ))
do	
	read variable
	echo $variable >> textfile.txt
done

# Gets row and word numbers from user
echo Please enter the row number
read row_number
echo Please enter the word number
read word_number

# Gets the word by using the
# specified row and word numbers
word=$(cat textfile.txt | head -n $row_number | tail -n 1 | awk -v wn="${word_number}" '{print $wn}')
echo found word: $word

# Replaces BestCloudForMe words to BC4M
sed -i 's/BestCloudForMe/BC4M/g' textfile.txt

# Outputs the textfile.txt
cat textfile.txt

