#!/bin/bash

hour=0
min=0
sec=10
name=""
outfile=/tmp/polybar-task.txt

while getopts 'h:vm:vs:vn:v' flag; do
    case "${flag}" in 
        h) hour=${OPTARG} ;;
        m) min=${OPTARG} ;;
        s) sec=${OPTARG} ;;
        n) name=${OPTARG} ;;
    esac
done

rm -rf outfile
~/.scripts/timer.sh -h $hour -m $min -s $sec -n "$name" | ~/.scripts/save-last-line.sh $outfile
echo "" > $outfile
