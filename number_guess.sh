#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
echo "Enter your username:"
read NAME
read GET_NAME<<< $(echo $($PSQL "select name from game_records where name='$NAME' limit 1")) 

if [[ -z $GET_NAME ]]
then
  echo "Welcome, $NAME! It looks like this is your first time here."
else
  read TOTAL NUMBER <<< $(echo $($PSQL "select count(*), min(attempts) from game_records where name='$NAME'") | sed 's/|/ /g')
  echo "Welcome back, $NAME! You have played $TOTAL games, and your best game took $NUMBER guesses."
fi
echo "Guess the secret number between 1 and 1000:"

R=$(( ( RANDOM % 1000 )  + 1 ))
CNT=1
read NUM
while [ ! $NUM = $R ]
do
  if [[ ! $NUM =~ [0-9]+ ]]
  then
    echo "That is not an integer, guess again:"
  else
    if [[ $NUM > $R ]]
    then
      echo "It's lower than that, guess again:"
    else
      echo "It's higher than that, guess again:"
    fi
  fi
  read NUM
  let CNT++
done
# ans--
echo "You guessed it in $CNT tries. The secret number was $R. Nice job!"
INSERT_RESULT=$(echo $($PSQL "insert into game_records(name,attempts) values('$NAME',$CNT)"))
