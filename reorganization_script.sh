#!/bin/sh
dirname=ROOT
mkdir ${dirname}
for i in `ls -d TPS/*/*`
do
    # echo "$i" >> listOfFiles.list
    name1=`echo "$i" | cut -d'/' -f2`
    name2=`echo "$i" | cut -d'/' -f3| cut -d'_' -f1`
    year=`echo "$i" | cut -d'_' -f2| cut -d'-' -f1`
    echo "$year"
    month=`echo "$i" | cut -d'-' -f2| cut -d'-' -f1`
    day=`echo "$i" | cut -d'-' -f3| cut -d'-' -f1`
    hour=`echo "$i" | cut -d'-' -f4| cut -d'-' -f1`
    dir="ROOT/Repos_${name1}/${name2}/${year}/${month}/${day}/${hour}"
    mkdir -p "$dir"
    filename=`echo "$i" | cut -d'-' -f5| sed 's/[-]//g' | cut -d'.' -f1`.dat
    mv "$i" "$dir"/`echo "$i" | cut -d'-' -f5-7 | sed 's/[-]//g' | cut -d'.' -f1`.dat
    # # mkdir -p ../ROOT/Repos_${name1}/${name2}/${year}/${month}/${day}/${hour}/${minute}

done