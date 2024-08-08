#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\n~~~~~ Number Guessing Game ~~~~~\n"
echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "select user_id from users where username='$USERNAME';")
if [[ $USER_ID ]]
then
  GAMES_PLAYED=$($PSQL "select count(*) from games where user_id=$USER_ID;")
  BEST_GAME=$($PSQL "select min(number_guesses) from games group by user_id having user_id=$USER_ID;")
  if [[ -z $BEST_GAME ]]
  then
    BEST_GAME=0
  fi
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
else
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) values('$USERNAME');")
  USER_ID=$($PSQL "select user_id from users where username='$USERNAME';")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
fi

GUESS_NUMBER() {
  if [[ $1 ]]
  then
    echo -e "\n$1"
  else
    echo -e "\nGuess the secret number between 1 and 1000:"
  fi

  read INPUT_NUMBER
  
  if [[ ! $INPUT_NUMBER =~ ^[0-9]+$ ]]
  then
    GUESS_NUMBER "That is not an integer, guess again:"
  else
    CHECK_GUESS_NUMBER $INPUT_NUMBER
  fi
}

CHECK_GUESS_NUMBER() {
  NUMBER_GUESSES=$(($NUMBER_GUESSES + 1))
  if (( $1 == $SECRET_NUMBER ))
  then
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, number_guesses) values($USER_ID, $NUMBER_GUESSES);")
    echo "You guessed it in $NUMBER_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
  elif (( $1 < $SECRET_NUMBER ))
  then
    GUESS_NUMBER "It's higher than that, guess again:"
  else
    GUESS_NUMBER "It's lower than that, guess again:"
  fi
}

SECRET_NUMBER=$(($RANDOM%1000+1))
NUMBER_GUESSES=0

GUESS_NUMBER
