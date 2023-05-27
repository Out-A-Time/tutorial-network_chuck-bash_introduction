#!/usr/bin/env bash

# PUSH UP COUNTER
# While Loop
# x=1

# while [[ $x -le 10 ]]; do
#     read -p "Pushup $x: Press enter to continue"
  
#     (( x ++ ))
# done

# #READING HAMLET
# y=1

# while read -r line; do
#     echo "Reading: $y $line"
#     (( x ++ ))
# done

#Until Loop (opposite of while loop. Run until true)
until [ $order == coffee ]; do
    echo "Would you like coffee or tea?"
    read order
done
echo "Excelent choice."

#FOR LOOPS
for cups in 1 2 3 4 5 6; do
    echo "You, have had $cups cups of coffee"
done
 echo "##############"

for cups in {1..3}; do
    echo "You, have had $cups cups of coffee"
done
echo "##############"