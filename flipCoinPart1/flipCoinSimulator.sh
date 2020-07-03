#!/bin/bash

isHead=1
isTail=0
flip=$((RANDOM%2))

if [ $flip -eq $isHead ]
then
	echo Head
else
	echo Tail
fi
