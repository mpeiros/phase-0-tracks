# Use split to create an array from the spy's real name
# Use reverse! on the array to swap the first and last name
# Use join(' ') on the array to create a string of the swapped first and last name
# Loop through this new string and check if the character is a vowel
# If vowel - use index to change the char to next vowel in the string 'aeioua' ('a' on the end will handle 'u' edge case)
# Else - use index to change the char to next consonant in the string 'bcdfghjklmnpqrstvwxyzb' ('b on the end will handle 'z' edge case)
# Print out the spy's alias

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

puts create_alias('Felicia Torres')