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
#     * if no - decrement the max wrong guess count
# - Allow read access
#   + string representing the state of the word to guess
#   + boolean representing state of the game
#   + maximum wrong guess count
# - Determine game over message to send to user
#   + if user has won - send congratulatory message including how many wrong guesses they used up
#   + if user has lost - send taunting message revealing the word that they were unable to guess 

# game class

class WordGame
  attr_reader :guessed_word, :game_over, :max_wrong_guesses

  def initialize(word)
    @word = word
    @max_wrong_guesses = word.length / 2
    @guessed_letters = []
    @guessed_word = '-' * word.length
    @game_over = false
  end

  def guess_letter(letter)
    return false if @guessed_letters.include?(letter)
    
    if @word.include?(letter) 
      replace_letters(letter)
      @guessed_letters << letter
    else
      @max_wrong_guesses -= 1
    end

    true
  end

  def replace_letters(letter)
    i = 0
    while i < @word.length
      if @word[i] == letter
        @guessed_word[i] = letter
      end
      i += 1
    end
  end

  def game_is_over?
    if @game_over || @max_wrong_guesses == 0
      true
    else
      false
    end
  end
end

