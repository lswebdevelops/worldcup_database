#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
# cleaning the tables before adding rows:
echo $($PSQL "TRUNCATE TABLE games, teams")
# CHECKING FOR TEAMS IN WINNERS' COLUMN
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != "winner" ]]
  then
  # get teams' names
  TEAM_ID=$($PSQL "select team_id from teams where name='$WINNER'")

  # if not found 
      if [[ -z $TEAM_ID ]]
      then
      #insert team 
      INSERT_TEAM_RESULT=$($PSQL "insert into teams(name) values('$WINNER')")
          if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
          then
            echo Inserted into teams, $WINNER
          fi
        # get new team_id

          TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      fi

  fi
done



# CHECKING FOR TEAMS IN OPPONENTS' COLUMN
cat games.csv | while IFS="," read YEAR ROUND TEAM OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $OPPONENT != "opponent" ]]
  then
  # get teams' names
  TEAM_ID=$($PSQL "select team_id from teams where name='$OPPONENT'")

  # if not found 
      if [[ -z $TEAM_ID ]]
      then
      #insert team 
      INSERT_TEAM_RESULT=$($PSQL "insert into teams(name) values('$OPPONENT')")
          if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
          then
            echo Inserted into teams, $OPPONENT
          fi
        # get new team_id
          TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      fi
  fi
done







# adding every row from games.csv to the games tables
# first line:>                     year,round,winner,opponent,winner_goals,opponent_goals
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS

do
  if [[ $YEAR != "year" ]]
    then

    TEAM_ID=$($PSQL "select team_id from teams where name='$WINNER'")
    TEAM_ID=$($PSQL "select team_id from teams where name='$OPPONENT'")
    WINNER_ID=$TEAM_ID
    OPPONENT_ID=$TEAM_ID
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES( '$YEAR','$ROUND',$WINNER_ID,$OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
     if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into students, $YEAR $ROUND $WINNER_ID $OPPONENT_ID $WINNER_GOALS $OPPONENT_GOALS
      fi



   fi
done
