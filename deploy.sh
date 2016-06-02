#!/bin/bash

repo=".git"

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

	if [ ! -d "$repo" ]; then
        	echo 'Error: .git is not exists. '
        	exit 4
	fi

fi

if [ ! -d "$repo" ]; then
	echo 'Error: .git is not exists. '
        exit 4
fi

