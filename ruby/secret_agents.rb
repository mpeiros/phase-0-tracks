# Encrypt
# split the string into words order deal with spaces
# feed split words into encryption function
# function will join words back together once encrypted
# for encryption function calculate length of the word and iterate through with while loop
# inside while loop, use index to encrypt letter using next unless letter is 'z'
# if 'z', then encrypt as 'a'

def encrypt(word)
  i = 0
  while i < word.length
    if word[i] == 'z'
      word[i] = 'a'
    elsif word[i] == ' '
      word[i] = ' '
    else
      word[i] = word[i].next!
    end
  end

  word
end

# Decrypt
# create a string of the alphabet
# iterate through encrypted word by letter with a while loop
# change index of encrypted letter by -1 and change to corresponding letter index in alphabet string

alphabet = '"abcdefghijklmnopqrstuvwxyz"'

def decrypt(word)
  i = 0
  while i < word.length
    if word[i] == 'a'
      word[i] = 'z'
    elsif word[i] == ' '
      word[i] = ' '
    else
      word[i] = alphabet[i - 1]
    end
  end

  word
end
