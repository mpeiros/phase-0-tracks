# Word Guessing Game
# - Initialize a new game with a word to guess
#   + initialize each game with a maximum wrong guess count based on length of the word
#   + initialize each game with empty array of guessed letters
#   + initialize each game with a string representing the state of the word to guess (e.g., would be initialized as '---' for a word that's 3 letters long)
#   + initialize each game with boolean representing the state of the game (i.e., is the game over or not)
# - Process letter guesses when entered
#   + break process if letter has already been guessed
#   + check if letter is included in the word
#     * if yes - add letter to string representing the state of the word
#     * if no - increment the wrong guess counter
# - Allow read access to string representing the state of the word to guess
# - Determine game over message to send to user
#   + if user has won - send congratulatory message including how many wrong guesses they used up
#   + if user has lost - send taunting message revealing the word that they were unable to guess 

# game class

class WordGame
  
end