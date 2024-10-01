#!/bin/bash
# Condition- if-elif-else
score=85

if [ $score -ge 90 ]; then
    echo "Note : A"
elif [ $score -ge 80 ]; then
    echo "Note : B"
elif [ $score -ge 70 ]; then
    echo "Note : C"
else 
    echo "Note : F"
fi

