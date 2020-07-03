#!/bin/bash

flip=$((RANDOM%2))

if [ $flip -eq 1 ]
then
        echo Its Head
else
        echo Its Tail
fi

