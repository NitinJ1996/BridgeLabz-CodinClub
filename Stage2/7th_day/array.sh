#!/bin/bash -x

counter=0
Fruits[((counter++))]="Apple"
Fruits[((counter++))]="Banana"
Fruits[((counter++))]="Orange"

colors=( red orange green )
echo ${Fruits[@]}
echo ${colors[@]}
echo ${color[1]}
