require_relative 'word_game'

# user interface

puts 'Welcome to the Word Guessing Game!'

user_word = ''

loop do
  print 'Please enter a word for your opponent to guess: '
  user_word = gets.chomp.downcase
  break if user_word.length > 1
  puts 'A word must be longer than 1 character. Try again.'
end

game = WordGame.new(user_word)
game.handle_spaces

until game.game_is_over?
  puts '_' * 50
  puts "The status of the word to guess is listed below. You have #{game.max_wrong_guesses} wrong guesses remaining."
  puts game.guessed_word

  print 'Please enter a letter to guess: '
  user_guess = gets.chomp.downcase[0] # only get first char to handle incorrect user input

  unless game.guess_letter(user_guess)
    puts "You have already guessed the letter #{user_guess}."
  else
    if game.correct_guess
      puts "Nice guess! All #{user_guess}'s have been revealed."
    else
      puts "Bad guess! No #{user_guess}'s in this word."
    end
  end

  user_win = game.check_for_win
end

if user_win
  puts "\nCongrats! You guessed the word '#{game.word}' with #{game.max_wrong_guesses} wrong guesses remaining."
else
  puts "\nYou suck! You were unable to guess the word '#{game.word}'."
end
