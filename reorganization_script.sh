#!/bin/sh
dirname=ROOT
mkdir ${dirname}
for i in `ls -d TPS/*/*`
do
    echo "Nom du script: creation_script.sh"  >> "$i"
    namefile=`echo "$i" | cut -d'/' -f3`
    echo "Ancien Nom : $namefile" >> "$i"
    name1=`echo "$i" | cut -d'/' -f2`
    name2=`echo "$i" | cut -d'/' -f3| cut -d'_' -f1`
    year=`echo "$i" | cut -d'_' -f2| cut -d'-' -f1`
    month=`echo "$i" | cut -d'-' -f2| cut -d'-' -f1`
    day=`echo "$i" | cut -d'-' -f3| cut -d'-' -f1`
    hour=`echo "$i" | cut -d'-' -f4| cut -d'-' -f1`
    dir="ROOT/Repos_${name1}/${name2}/${year}/${month}/${day}/${hour}"
    mkdir -p "$dir"
    filename=`echo "$i" | cut -d'-' -f5-8| sed 's/[-]//g' | cut -d'.' -f1`.dat
    echo "$filename"
    echo "chemin : $dir/$filename"  >> "$i"
    mv "$i" "$dir"/"$filename"

done