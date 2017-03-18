class Santa
  def initialize(gender, ethnicity)
    puts 'Initializing Santa instance...'
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0  
  end
  
  def speak
    puts 'Ho, ho, ho! Haaaappy holidays!'
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def about
    puts "I am a #{@gender} #{@ethnicity} Santa!"
  end
end

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

puts 'Making some santas'
puts '-' * 40
santas = []
example_santas = {
  'male' => 'black',
  'female' => 'white',
  'agender' => 'Chinese',
  'bigender' => 'Latino',
  'gender fluid' => 'unicorn'
}

example_santas.each { |gender, ethnicity| santas << Santa.new(gender, ethnicity) }
santas.each { |santa| santa.about }
puts '-' * 40

puts 'Making some more santas'
puts '-' * 40
more_santas = []
more_example_santas = [
  ['female', 'Japanese'],
  ['male', 'German'],
  ['gender fluid', 'Russian'],
  ['bigender', 'Canadian'],
  ['agender', 'dragon']
]

more_example_santas.each { |example_santa| more_santas << Santa.new(example_santa[0], example_santa[1]) }
more_santas.each { |santa| santa.about }
puts '-' * 40
