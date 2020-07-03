#!/bin/bash

isHead=1
isTail=0
headWon=0
tailWon=0
for ((i=0;i<25;i++))
do

   flip=$((RANDOM%2))

   if [ $flip -eq $isHead ]
   then
	headWon=$(( headWon+1 ))
   else
	tailWon=$(( tailWon+1 ))
   fi
done

echo Head Won $headWon times
echo Tail won $tailWon times
