# Classes:
Player
Game
Turn

## Player class contains:
 - variable @life, start at 3 for each player
 - variable @name
 - method current_life to calculate player's life after each wrong answer

## Game class contains:
- current_player
- turn for current player
- switch player when current player submit answer
- calculate life left, start new turn or stop game when either player run out of life

## Turn class contains:
- Two random numbers 1-20
- Player's answer
- method question to generate question
- method result for each question