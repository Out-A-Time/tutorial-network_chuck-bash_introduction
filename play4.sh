#!/usr/bin/bash

# echo "Do you like coffee? (y/n): "

# read answer

# echo "$answer"

# CONDITIONALS
# if [[ $answer == "y" ]]; then
#     echo "You are awesome!"
# else
#     echo "You are not awesome! Leave now"
# fi

echo "*** Welcome Player. Select your class ***:
1 - Samurai
2 - Prisoner
3 - Propher"

read class
case $class in
    1)
        type="Samurai"
        hp=10
        attack=20
        ;;
    2)
        type="Prisoner"
        hp=20
        attack=4
        ;;    
    3)
        type="Prophet"
        hp=30
        attack=20
        ;;
esac

echo "You chosen the $type class. Your HP is $hp and your attack is $attack"

#Round 1
beast=$(($RANDOM % 2))
echo "$beast"
echo "First beast approaches. Prepare. Pick a number between 0-1:"
read player_move

if [[ $player_move == $beast ]]; then
    echo "You won!"
else
    echo "You died!"
    exit 1
fi

sleep 2

#Round 2
beast=$(($RANDOM % 10))
echo "$beast"
"Boss Battle. Prepare. Pick a number between 0-9:"
read player_move

if [[ $player_move == $beast || $player_move == "coffee" ]]; then
    echo "You won!"
    sleep 1

    echo ".....Beast is still moving. Finish it! Type: dagger"
    read player_move
    if [[ $player_move == "dagger" ]]; then
        echo "You killed the beast!"
    
    else
        echo "Beast killed you with their last breath!"
    fi
echo "The cave is rumbling. It's going to collapse! Type: danger"
read player_move
elif [[ $player_move == "danger" ]]; then
    echo "Uff. You ran away!"
    # here some error, there is no last message.
else
    echo "You died!"
    exit 1
fi