#!/bin/bash

isHead=1
isTail=0
headWon=0
tailWon=0
while [ $headWon -lt 21 -a $tailWon -lt 21 ]
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

if [ $headWon -eq $tailWon ]
then
     echo Its Tie so The Game To be Continued till another 3 Tosses
     headWon=0
     tailWon=0
        while [ $headWon -le 2 -a $tailWon -le 2 ]
        do
           flip=$((RANDOM%2))
           if [ $flip -eq $headWon ]
           then
                headWon=$(( headWon+1 ))
           else
                tailWon=$(( tailWon+1 ))
           fi
                if [ $headWon -gt $ $tailWon ]
                then
                        echo Head Won
                else
                        echo Tail Won
                fi
        done

elif [ $headWon -gt $tailWon ]
then
     echo Head Won
else
    echo Tail Won
fi
