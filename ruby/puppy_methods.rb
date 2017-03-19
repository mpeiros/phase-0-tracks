class Puppy
  def initialize
    puts 'Initializing new puppy instance...'
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(woof_int)
    woof_int.times { puts 'Woof!' }
  end

  def roll_over
    puts 'Rolls over'
  end

  def dog_years(human_years)
    human_years * 7
  end

  def ignore_owner(command)
    puts "You told puppy to #{command}, but it ignored you."
  end
end

puppy = Puppy.new
puppy.fetch('stick')
puppy.speak(5)
puppy.roll_over
puts puppy.dog_years(8)
puppy.ignore_owner('sit')
