#!/bin/bash
# Add silly decorative characters around the first argument, a la AIM

input=$1

bling_chars=(xXx XxX '~' ^ • ¥ + '||')

random_bling=""
random_length=$((3 + RANDOM%3))

for i in `seq $random_length`
do
  random_bling="$random_bling${bling_chars[$((RANDOM%8))]}"
done

rev_random_bling=$(echo $random_bling | rev)

echo $random_bling $input $rev_random_bling