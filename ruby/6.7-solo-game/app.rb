require_relative 'word_game'

# user interface

puts 'Welcome to the Word Guessing Game!'
print 'Please enter a word for your opponent to guess: '
user_word = gets.chomp.downcase

game = WordGame.new(user_word)

until game.game_is_over?
  puts "The status of the word you must guess is listed below. You have #{game.max_wrong_guesses} wrong guesses remaining."
  puts game.guessed_word

  print 'Please enter a letter to guess: '
  user_guess = gets.chomp.downcase

  puts 'You have already guessed that letter.' unless game.guess_letter(user_guess)
  game.check_for_win
end

if game.check_for_win
  puts("Congrats! You guessed the word #{game.word} with #{game.max_wrong_guesses} wrong guesses remaining.") 
else
  puts("You suck! You were unable to guess the word #{game.word}.")
end
