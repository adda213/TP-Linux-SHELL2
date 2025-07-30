#!/bin/sh
dirname=$1
N=$2
M=$3
mkdir ${dirname}
list=("devops" "data" "fonctionnel")
for i in ${list[@]}
do
    mkdir ${dirname}/${i}
done
devops=("git" "terraform" "aws")
data=("spark" "scala" "gcp")
fonctionnel=("spec" "postman" "sql") 

cd ${dirname}/devops
for i in ${devops[@]}
do  
    for ((j=1;j<="$N";j++))
    do 
        FILE=${i}_`date +%y-%m-%d-%H-%M-%S-%3N`.txt
        touch $FILE
        sleep $M
    done
done
cd ../..
cd ${dirname}/data
for i in ${data[@]}
do  
    for ((j=1;j<="$N";j++))
    do 
        FILE=${i}_`date +%y-%m-%d-%H-%M-%S-%3N`.txt
        touch $FILE
        sleep $M
    done
done

cd ../..
cd ${dirname}/fonctionnel
for i in ${fonctionnel[@]}
do  
    for ((j=1;j<="$N";j++))
    do 
        FILE=${i}_`date +%y-%m-%d-%H-%M-%S-%3N`.txt
        touch $FILE
        sleep $M
    done
done
