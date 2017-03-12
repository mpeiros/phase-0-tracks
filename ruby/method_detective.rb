# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
puts "iNvEsTiGaTiOn".replace("InVeStIgAtIoN")
# => “InVeStIgAtIoN”

puts "zom".sub("o", "oo")
puts "zom".gsub("o", "oo")
puts "zom".insert(1, "o")
puts "zom".insert(2, "o")
puts "zom".replace("zoom")
# => “zoom”

puts "enhance".center(15)
puts "enhance".replace("    enhance    ")
# => "    enhance    "

puts "Stop! You’re under arrest!".upcase
puts "Stop! You’re under arrest!".replace("STOP! YOU’RE UNDER ARREST!")
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual".concat(" suspects")
puts "the usual".replace("the usual suspects")
# => "the usual suspects"

puts " suspects".prepend("the usual")
puts " suspects".replace("the usual suspects")
# => "the usual suspects"

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4