# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative starts from within the same directory structure and can either
# go up or down using ../.. type pathing
# require starts from the root of the file and starts down using <name>/<filename>/etc.
require_relative 'state_data'

class VirusPredictor

  #initializes the instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #virus_effects returns the values from predicted deaths method and speed of spread method
  def virus_effects
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak"\
    " and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private

  # predicted_deaths method takes in 3 arguments and based on those arguments prints a statement 
  # based on the if statements within and returns nil
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      return (@population * 0.4).floor
    elsif @population_density >= 150
      return (@population * 0.3).floor
    elsif @population_density >= 100
      return (@population * 0.2).floor
    elsif @population_density >= 50
      return (@population * 0.1).floor
    else
      return (@population * 0.05).floor
    end
  end

  #speed_of_spread method takes two arguments and based on those arguments puts 
  # the speed of spread which returns nil 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1.0
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2.0
    else
      speed += 2.5
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 STATE_DATA.each do |state, data|
  state_info = VirusPredictor.new(state, data[:population_density], data[:population])
  state_info.virus_effects
end


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
=begin

What are the differences between the two different hash syntaxes shown in the state_data file? 

The first type is the hash rocket with the quotes so that when you call the key of the hash it would 
return Alabama, and not :alabama. 

The second type is the symbol version which is used like key: value; but is printed as ":key" and not
as easy to understand.

What does require_relative do? How is it different from require?

require_relative uses the directory it resides in to access the files being used
require uses the current directory that you are running the program from and not where
the file resides in.

What are some ways to iterate through a hash?

You can iterate through a hash with the .each method and you can just access
the keys, or values, or both. In this assignment I was able to access the keys, values,
and the values inside the values. (nested hash)

When refactoring virus_effects, what stood out to you about the variables, if anything?

I believe I immediately said 'why do we need the instance variables?'. It just seemed
like a lot of repeating, especially since both the predicted_deaths and speed_of_spreed
methods had the instance variables inside of their methods already, it was just unnecessary 
passing of the instance variables.

What concept did you most solidify in this challenge?

Everything. This is my second time doing this challenge and everything
just makes sense. The hashes and the refactoring. I struggled a lot the
first time I did this and am actually glad I was able to do this challenge
by myself to see if I would be able to do it on my own. I definitely feel
a lot more comfortable with what I did espeically with great guidance from Helin.

=end















