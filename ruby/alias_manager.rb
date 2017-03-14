# Use split to create an array from the spy's real name
# Use reverse! on the array to swap the first and last name
# Use join(' ') on the array to create a string of the swapped first and last name
# Loop through this new string and check if the character is a vowel
# If vowel - use index to change the char to next vowel in the string 'aeioua' ('a' on the end will handle 'u' edge case)
# Else - use index to change the char to next consonant in the string 'bcdfghjklmnpqrstvwxyzb' ('b on the end will handle 'z' edge case)
# Print out the spy's alias

def swap_names(full_name)
  name_array = full_name.split
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

puts swap_names('Felicia Torres')
puts next_vowel('a')
puts next_vowel('u')
puts next_consonant('b')
puts next_consonant('z')
