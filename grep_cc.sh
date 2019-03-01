#!/bin/sh

path=$1

regex=$(cat rules/generic_cc.txt)
grep -r -P $regex $path
