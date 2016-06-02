#!/bin/bash

repo=".git"
gitcm="git checkout master"
gitmb="git merge develop --no-ff"
gitpm="git push -u origin master"

if (( $# < 3  )); then
	echo 'At least the command needs 3 parameters. '
	exit 3
fi

if [ $1 == "-gc" ]; then
	echo '-- Generate composer enabled --'
fi

if [ $2 == "-gm" ]; then
	tag=$3

	echo '-- Generate master enabled --'
	echo "- Tag: $3"

	if [ $4 == '-dtag' ]; then
        	dtag=$5

        	echo "- Description: $5"
	fi
	
	git checkout master
	
fi

if [ ! -d "$repo" ]; then
	echo 'Error: .git is not exists. '
        exit 4
fi

