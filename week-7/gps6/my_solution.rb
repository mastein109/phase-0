## Virus Predictor

# I worked on this challenge [with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require relative loads a file from the same dir that the this file resides. Require pulls from the ruby library not a local directory.

require_relative 'state_data'

class VirusPredictor

  #assign paramters to instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #calling methods with instance variables
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

#Pseudocode
=begin
steps:
1. iterate through hash
2. update instance variables
3. call virus effects

=end

  def virus_effects_all
    STATE_DATA.each do |key,value|
      @state = key
      @population = value[:population]
      @population_density = value[:population_density]
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
    end
  end


  private

  #calculate number of deaths based on pop density, prints output
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #calculating the speed at which virus will spread, based on pop   density.  Prints output.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

#Refactor

require_relative 'state_data'

class VirusPredictor

  #assign paramters to instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #calling methods with instance variables
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

#Pseudocode
=begin
steps:
1. iterate through hash
2. update instance variables
3. call virus effects

=end

  def virus_effects_all
    STATE_DATA.each do |key,value|
      @state = key
      @population = value[:population]
      @population_density = value[:population_density]
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
    end
  end


  private

  #calculate number of deaths based on pop density, prints output
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
  case @population_density
    when (200..1000)
      number_of_deaths = (@population * 0.4).floor
    when (150...200)
      number_of_deaths = (@population * 0.3).floor
    when (100...150)
      number_of_deaths = (@population * 0.2).floor
    when (50...100)
      number_of_deaths = (@population * 0.1).floor
    when (0...50)
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #calculating the speed at which virus will spread, based on pop   density.  Prints output.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case @population_density
    when (200..1000)
      speed += 0.5
    when (150...200)
      speed += 1
    when (100...150)
      speed += 1.5
    when (50...100)
      speed += 2
    when (0...50)
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

all_states = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
all_states.virus_effects_all

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
  The two different hash syntaxes are used for the keys in both the outer and inner hash. This actually made it a bit easier to read and decipher where the separation of outer and inner hash occurs.

What does require_relative do? How is it different from require?
  Require_relative loads a file from a relative file path and require will expect a ruby library path.

What are some ways to iterate through a hash?
  You can iterate through a hash using .each, .each_key, .each_value. For this specific program it was best to use .each since we were looking for both the key and the value.

When refactoring virus_effects, what stood out to you about the variables, if anything?
  It was clear that since the instance variables were defined within the initialize method and used as parameters in the other methods, we did not need to call them again in virus_effects.

What concept did you most solidify in this challenge?
  I actually came out of this challenge having a better grasp on case and how much simpler it makes the code.
=end