#!/bin/sh

for i in *.cm
do
  ../cmc $i
  java -jar ~/Downloads/Mars4_5.jar $(echo "$i"|sed 's/cm$/s/')
done
