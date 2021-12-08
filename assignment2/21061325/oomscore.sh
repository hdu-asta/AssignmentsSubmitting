#!/bin/bash
for PID in $(ls /proc/)
do
	for score in $(cat /proc/$PID/oom_score)
	do
		for name in $(cat /proc/$PID/comm)
		do
			echo "$name($PID):$score"
		done
	done
done