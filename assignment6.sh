////////////////////////////////////////////////////////////////////////////////
//
//  File           : Talib_Ayyan.sh
//  Description    : This is the main source code for for the sixth assignment
//                   of CMSC257.  See the related
//                   assignment page for details.
//
//   Author        : Ayyan Talib
//   Last Modified : 12/13/2016
//

#! /bin/bash
#!/usr/bin/env bash

#assignment 6
#Ayyan Talib

max=0
file=$1
in=0
count=0


# increment count of total lines each time we look at a new word
# increment count of total words each time we look at a new word 

echo "Number of Lines:"
wc -l < $file
echo "Number of Words:"
wc -w < $file



declare -A count
for wordcount in $(< "$file"); do
          (( count[$wordcount]++ ))
done


# most-frequent word
for wordcount in "${!count[@]}"; do
if (( ${count[$wordcount]} > $max )); then
max=${count[$wordcount]}
max_wordcount=$wordcount
fi
done



echo -e "Most Repetitive Word: \n'$max_wordcount', used $max times"


# least-frequent word
for wordcount in "${!count[@]}"; do
if (( ${count[$wordcount]} < $max )); then
max=${count[$wordcount]}
max_wordcount=$wordcount
fi
done

