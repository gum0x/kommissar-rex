#!/bin/sh 

path=$1

grep -E -f rules///findings.txt -r $path
