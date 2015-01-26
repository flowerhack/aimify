#!/bin/bash
# Add silly decorative characters around the first argument, a la AIM

output=$1

bling_chars=(xXx XxX '~' ^ • ¥ + '||')
len_bling_chars=${#bling_chars[@]}

random_bling=""
random_length=$((3 + RANDOM%3))

echo $random_length

for i in eval echo {0..$random_length}
do
  echo i
  char_pos=$((RANDOM % len_bling_chars))
  output="${bling_chars[$char_pos]}$output${bling_chars[$char_pos]}"
done

echo $output
