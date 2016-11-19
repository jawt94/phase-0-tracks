# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
#require_relative usually starts looking in the same directory
#and is a subset of require so it is easier to use instead of require 

#creates the class 
class VirusPredictor

  #initializes methods and variables needed for the VirusPredictor class to run 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #creates a method for virus effect, calls predicted_deaths and spread_of_spread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  #sets certain methods as private; meaning that they cannot be called with an explicit receiver
  private

  #creates method for predicted_deaths based on pop density, pop. and state
  def predicted_deaths
    # predicted deaths is solely based on population density
    
    ratio = associated_value(@population_density, [200, 150, 100, 50, -Float::INFINITY], [0.4, 0.3, 0.2, 0.1, 0.05])
    puts "ratio" 
    puts ratio 

    # case 
    # when @population_density >= 200
    #   ratio = 0.4
    # when @population_density >= 150
    #   ratio = 0.3 
    # when @population_density >= 100
    #   ratio =0.2
    # when @population_density >=50
    #   ratio =0.1
    # else 
    #   ratio = 0.05 
    # end #case 

    number_of_deaths = (@population * ratio).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  
  end #predicted_deaths

  def associated_value (value, ranges, ass_value)
    ranges.each_with_index do |range, index|
      return ass_value[index] if value >= range 

    end #do 


  end 

  def speed_of_spread #in months
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

  end #speed of spread 

end #class 

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, population_information|
  state_information = VirusPredictor.new(state, population_information[:population_density], population_information[:population])
  state_information.virus_effects
end 


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# Reflection Section
#1. The symbols used are different. One hash holds the keys and the other hash holds the values. 
#2. Require relative is a method that accesses the file in the directory and starts searching from the one you are currently working in
#3. .each is a good way to iterate through a hash
#4. They quoted methods within a method 
#5. How to iterate within a hash even using a method. 




