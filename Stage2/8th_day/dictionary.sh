#!/bin/bash -x

declare -A sounds
sounds[dog]="bark"
sounds[cow]="mow"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog Sound: " ${sounds[dog]}
echo "Animals sounds:" ${sounds[@]}
echo "All animals are: "${!sounds[@]}
