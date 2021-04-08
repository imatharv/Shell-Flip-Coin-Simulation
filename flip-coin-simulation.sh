#!/bin/bash

echo "welcome to flip coin simulation"

#Use-case-1 Function for flipping a coin
function flipCoin(){
	result=$(( RANDOM%2 ))
	echo $result
}

#Use-case-2 Flipping a coin and show number of times head and tail has won
read -p "How many times do you want to flip a coin: " iteration
headWinCounter=0
tailWinCounter=0

for ((count=0;count<$iteration;count++))
do
	flip=$((RANDOM%2))

	if [[ $flip -eq 1 ]]
	then
		((headWinCounter++))
	else
		((tailWinCounter++))
	fi
done

echo "Number of times HEAD won: $headWinCounter"
echo "Number of times TAIL won: $tailWinCounter"
