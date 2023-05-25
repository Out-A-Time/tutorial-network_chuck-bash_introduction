#!/usr/bin/bash
echo "My first BASH script is this script"
GREET="Howdy! I'm watching Fireship.io right now."

echo $GREET

##Positional arguments
## filename arg1 arg2 - i.e. ./first_bash_script.sh max kolonko
echo "Name: $1"
echo "Age: $2"