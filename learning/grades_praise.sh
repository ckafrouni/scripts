#!/usr/bin/env bash

evaluate_grade() {
	grade=$1
	s=$2;
	e=$3;
	msg=$4;

	if [ "$grade" -ge "$s" -a "$grade" -le "$e" ]; then
		echo $msg;
		exit 0;
	fi
}

read -p "What is your grade [0..20] ? " grade

evaluate_grade $grade 0 9 "Bad"
evaluate_grade $grade 10 12 "Enough"
evaluate_grade $grade 12 14 "Good"
evaluate_grade $grade 14 16 "Great"
evaluate_grade $grade 16 20 "Amazing"

echo "ERROR: bad grade '$grade'" >&2
exit 1;
