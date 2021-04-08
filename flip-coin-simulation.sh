#!/bin/bash

echo "welcome to flip coin simulation"

#Use-case-1 Function for flipping a coin
function flipCoin(){
	result=$(( RANDOM%2 ))
	echo $result
}

#Use-case-2 Flipping a coin and storing it in a dictionary
isHead=0
isTail=1
count=10
headCount=0
tailCount=0

declare -A singlet

for ((  i=0 ; i<count ; i++ ))
do
	singlet[$i]=$( flipCoin )
	if [[ singlet[$i] -eq isHead ]]
	then
		(( headCount++ ))
	elif [[ singlet[$i] -eq isTail ]]
	then
		(( tailCount++ ))
	fi
done
echo ${singlet[@]}

#Function for calculating percentage
function percentage(){
	count=`echo "$1*0.1"|bc`
	percent=`echo "$count*100"|bc`
	echo $percent
}

singletHeadPercentage=$( percentage $headCount )
echo $singletHeadPercentage
singletTailPercentage=$( percentage $tailCount )
echo $singletTailPercentage