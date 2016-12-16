#!/bin/sh

for i in *.cm
do
  ./cmc input/$i
  java -jar ~/CS4121/Mars4_5.jar $(echo "$i"|sed ’s/cm$/s/’)
done
