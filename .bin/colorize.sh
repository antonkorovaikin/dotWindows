#!/bin/bash

changesCount=$(git status -s | awk 'END{ print NR }') 
if [ $changesCount -eq 0 ] 
then 
	echo "There is no changes"
else
	echo "There are changes"
fi;
