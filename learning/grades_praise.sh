#!/usr/bin/env bash

read -p "What is your grade [0..20] ? " GRADE

# check if out of bounds
if [ -z "$GRADE" ] || [ $GRADE -lt 0 -o $GRADE -gt 20 ]; then
	echo "ERROR: invalid grade: '$GRADE'" >&2;
	exit 1;
fi

if [ "$GRADE" -lt 10  ]; then
	echo "Bad";
	exit 0;
elif [ "$GRADE" -lt 12  ]; then
	echo "Enough";
	exit 0;
elif [ "$GRADE" -lt 14  ]; then
	echo "Good";
	exit 0;
elif [ "$GRADE" -lt 16  ]; then
	echo "Great";
	exit 0;
else
	echo "Amazing";
	exit 0;
fi

