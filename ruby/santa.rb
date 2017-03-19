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

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    if @reindeer_ranking.include?(reindeer_name)
      @reindeer_ranking.delete(reindeer_name)
      @reindeer_ranking.push(reindeer_name)
      p @reindeer_ranking
    else
      puts 'No reindeer by that name'
    end
  end

  # Getter methods
  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  # Setter methods
  def gender=(new_gender)
    @gender = new_gender
  end
end

#Driver Code

# Initializations for release 1
# puts 'Making some santas'
# puts '-' * 40
# santas = []
# example_santas = {
#   'male' => 'black',
#   'female' => 'white',
#   'agender' => 'Chinese',
#   'bigender' => 'Latino',
#   'gender fluid' => 'unicorn'
# }

# example_santas.each { |gender, ethnicity| santas << Santa.new(gender, ethnicity) }
# santas.each { |santa| santa.about }
# puts '-' * 40

# puts 'Making some more santas'
# puts '-' * 40
# more_santas = []
# more_example_santas = [
#   ['female', 'Japanese'],
#   ['male', 'German'],
#   ['gender fluid', 'Russian'],
#   ['bigender', 'Canadian'],
#   ['agender', 'dragon']
# ]

# more_example_santas.each { |example_santa| more_santas << Santa.new(example_santa[0], example_santa[1]) }
# more_santas.each { |santa| santa.about }
# puts '-' * 40

# Test code for relase 2
santa_claus = Santa.new('male', 'black')
santa_claus.about
puts santa_claus.age
puts santa_claus.ethnicity
santa_claus.celebrate_birthday
santa_claus.celebrate_birthday
puts santa_claus.age
santa_claus.get_mad_at('Vixen')
santa_claus.get_mad_at('Vix')
santa_claus.gender = 'female'
santa_claus.about



