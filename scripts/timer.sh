#!/bin/bash

hour=0
min=0
sec=10
name=""

while getopts 'h:vm:vs:vn:v' flag; do
    case "${flag}" in 
        h) hour=${OPTARG} ;;
        m) min=${OPTARG} ;;
        s) sec=${OPTARG} ;;
        n) name=${OPTARG} ;;
    esac
done

while [ $hour -ge 0 ]; do
        while [ $min -ge 0 ]; do
                while [ $sec -ge 0 ]; do
#                        echo -ne "\033[2K"
                        if [ ! -z ${name// } ]; then
                            echo -ne "${name}: "
                        fi
                        if [ $hour -ne 0 ]; then
                            echo -ne "${hour}h "
                        fi
                        if [ $min -ne 0 ]; then
                            echo -ne "${min}m "
                        fi
                        echo -ne "${sec}s\n"
                        let "sec=sec-1"
                        sleep 1
                done
                sec=59
                let "min=min-1"
        done
        min=59
        let "hour=hour-1"
done
