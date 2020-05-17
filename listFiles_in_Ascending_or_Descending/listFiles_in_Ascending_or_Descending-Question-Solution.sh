#!/bin/bash

function acc {
	echo "$1 in accessing order"
	ls -l | sort -k9,9
}

function desc {
	echo "$1 in descending order"
	ls -l | sort -k9,9 -r
}


if [ $# -ne 2 ];then
	echo "USAGE: "$0 "[FOLDER] [ASC/DES]"
	exit 1
fi


if [ ! -d $1 ];then
	echo "ERROR, $1 is not a directory"
	exit 1
fi

case $2 in
	ASC)
		acc "$1" ;;
	DES)
		desc "$1" ;;
	*)
		echo "unknown option $2" ;;
esac
