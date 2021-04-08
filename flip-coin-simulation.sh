#!/bin/bash

echo "welcome to flip coin simulation"

#Use-case-1 Function for flipping a coin
function flipCoin(){
	result=$(( RANDOM%2 ))
	echo $result
}
