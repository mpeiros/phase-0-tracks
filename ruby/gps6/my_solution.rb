# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is for other files in the same directory that you've written, only for files
# require more for third party modules or gems
require_relative 'state_data'

class VirusPredictor

  # creates a new instance of VirusPredictor and sets initial values for the instance variables based on the arguments passed in
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls the two private methods predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # calculates amount of predicted deaths based on population density and population, prints the result
  def predicted_deaths
    # predicted deaths is solely based on population density
    population_multiplier = 0

    case @population_density
    when (200..Float::INFINITY) then population_multiplier = 0.4
    when (150...200) then population_multiplier = 0.3
    when (100...150) then population_multiplier = 0.2
    when (50...100) then population_multiplier = 0.1
    else population_multiplier = 0.05
    end

    number_of_deaths = (@population * population_multiplier).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  # calculates how fast the flu is spreading based on population density, prints the result
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case @population_density
    when (200..Float::INFINITY) then speed = 0.5
    when (150...200) then speed = 1
    when (100...150) then speed = 1.5
    when (50...100) then speed = 2
    else speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each { |state, population_hash| VirusPredictor.new(state, population_hash[:population_density], population_hash[:population]).virus_effects } 

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section