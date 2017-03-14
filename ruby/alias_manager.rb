# Use split to create an array from the spy's real name
# Use reverse! on the array to swap the first and last name
# Use join(' ') on the array to create a string of the swapped first and last name
# Loop through this new string and check if the character is a vowel
# If vowel - use index to change the char to next vowel in the string 'aeioua' ('a' on the end will handle 'u' edge case)
# Else - use index to change the char to next consonant in the string 'bcdfghjklmnpqrstvwxyzb' ('b on the end will handle 'z' edge case)
# Format the spy's alias using capitalize
# Prompt user to enter a name (break loop if user enters sentinel value)
# Grab user input, pass it into method to create alias, print the result, and store result in a hash
# When user enters sentinel value - iterate through the hash and print out a summary of the names and aliases

# Methods to create the alias
def swap_names(spy_name)
  name_array = spy_name.split
  name_array.reverse!
  name_array.join(' ')
end

def next_vowel(char)
  vowels = 'aeioua'
  index = vowels.index(char)
  char = vowels[index + 1]
end

def next_consonant(char)
  consonants = 'bcdfghjklmnpqrstvwxyzb'
  index = consonants.index(char)
  char = consonants[index + 1]
end

def format_name(spy_name)
  name_array = spy_name.split
  name_array.map! { |name| name.capitalize }
  name_array.join(' ')
end

def replace_chars(spy_name)
  spy_alias = ' '
  spy_name.each_char do |char|
    if char == ' '
      spy_alias += ' '
    elsif char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u'
      spy_alias += next_vowel(char)
    else
      spy_alias += next_consonant(char)
    end
  end
  spy_alias
end

def create_alias(spy_name)
  swapped_names = swap_names(spy_name).downcase
  spy_alias = replace_chars(swapped_names)
  format_name(spy_alias)
end

# User interface code
puts 'Welcome to the alias creator!'

spy_names_and_aliases = {}

loop do
  print "Enter your name here (or enter 'q' to quit): "
  name = gets.chomp
  break if name == 'q'
  puts "#{create_alias(name)} is actually #{name}"
  spy_names_and_aliases[name] = create_alias(name)
end

puts 'Here is a summary of all the names that you entered:'
spy_names_and_aliases.each { |spy_name, spy_alias| puts "#{spy_alias} is actually #{spy_name}" }
