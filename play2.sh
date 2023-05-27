echo "what is your name?"
#read name                  #this is a variable / user is being prompted with question from echo above

last_name=$1                #this is position argument/parameter
adjective=$2                #this is position argument/parameter

echo "Have a great day $name $last_name!"
echo "You have the best $adjective I've ever seen"

user=$(whoami)
date=$(date)
echo "YOU ARE: $user"
echo "TODAY IS: $date"

