#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
SET_TEAM_ID() {
  TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$1';")
  if [[ ! $TEAM_ID ]]
  then
    TEAM_ID=$($PSQL "INSERT INTO teams(name) VALUES('$1'); SELECT team_id FROM teams WHERE name='$1';")
  fi
}

$($PSQL "TRUNCATE TABLE games, teams;")

while IFS=, read -r year round winner opponent winner_goals opponent_goals
do
  if [[ $year != year ]]
  then
    echo "$year $round $winner $opponent $winner_goals $opponent_goals"
    SET_TEAM_ID "$winner"
    winner_id=$TEAM_ID
    SET_TEAM_ID "$opponent"
    opponent_id=$TEAM_ID
    IN=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($year, '$round', $winner_id, $opponent_id, $winner_goals, $opponent_goals);")
  fi
done < games.csv
