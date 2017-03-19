# Code for release 1
# module Shout
#   def self.yell_angrily(words)
#     words + '!!!' + ' :('  
#   end

#   def self.yell_happily(words)
#     words + '! :) :) :)'
#   end
# end

# puts Shout.yell_angrily('I am mad')
# puts Shout.yell_happily('I am happy')

# Convert Shout module to mixin for Release 3
module Shout
  def yell_angrily(words)
    puts "#{words}!!! :("  
  end

  def yell_happily(words)
    puts "#{words}! :) :) :)"
  end
end

class AngryPerson
  include Shout
end

class HappyPerson
  include Shout
end

angry_person = AngryPerson.new
angry_person.yell_angrily('I am so mad')
angry_person.yell_happily('I won my game')

happy_person = HappyPerson.new
happy_person.yell_angrily('I lost my game')
happy_person.yell_happily('But I still love life')
