#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

TRUNCATE_RESULT=$($PSQL "TRUNCATE TABLE teams, games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS

do

if [[ $YEAR != "year" ]]
then
  WINNER_TEAM=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
  OPPONENT_TEAM=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")

  if [[ -z $WINNER_TEAM ]]
  then 
    INSERT_WINNING_TEAM=$($PSQL "INSERT INTO teams (name) VALUES ('$WINNER')")
    echo $INSERT_WINNING_TEAM
    a=$((a+1))
  fi

  if [[ -z $OPPONENT_TEAM ]]
  then 
    INSERT_OPPONENT_TEAM=$($PSQL "INSERT INTO teams (name) VALUES ('$OPPONENT')")
    echo $INSERT_OPPONENT_TEAM
    a=$((a+1))
  fi

  WINNER_TEAM=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
  OPPONENT_TEAM=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")


  INSERT_GAME=$($PSQL "INSERT INTO games (year, winner_id, opponent_id, winner_goals, opponent_goals, round) VALUES($YEAR, $WINNER_TEAM, $OPPONENT_TEAM, $WINNER_GOALS, $OPPONENT_GOALS, '$ROUND' )")

  echo $INSERT_GAME
fi

done

 



