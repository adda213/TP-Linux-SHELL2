
list=("devops" "data" "fonctionnel")
N=$1
for ((j=1;j<="$N";j++))
do
    M=($j++)
    S=$M
    list+=("$S")
done
echo "${list[@]}"