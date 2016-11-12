#three instance methods
#A speak method that will print "Ho, ho, ho! Haaaappy holidays!" 
	#(Santa has been working on being more inclusive.)
#An eat_milk_and_cookies method that takes 
	#a cookie type (example: "snickerdoodle") as a parameter 
	#and prints "That was a good <type of cookie here>!" 
#An initialize method that prints "Initializing Santa instance ...".

class Santa
	attr_reader :age, :ethnicity, :reindeer_ranking #getter (i.e. readable) method for age & ethnicity
	attr_accessor :gender #setter (i.e. writable) method for gender

	def initialize(gender,ethnicity)
		@gender = gender 
		@ethnicity = ethnicity 
		@reindeer_ranking = [
		"Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		puts "Initializing Santa instance..."
		@age = 0 
	end #initialize

	def speak()
		puts "Ho, ho, ho! Haaaappy holidays!"
	end #speak

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end #eat_milk_and_cookies

	def celebrate_birthday
		@age +=1
		puts "Happy Birthday Santa!"
	end 

	def get_mad_at(reindeer)
		puts "Bad #{reindeer}! Move to the back!"
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer 
	end  

end #class

	
#Release 1
santas =[]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
10.times do 
	santas << Santa.new(example_genders[rand(example_genders.length)], example_ethnicities[rand(example_ethnicities.length)])
end

#Release 2
#test randomized gender, ethnicity & reindeers as well as age function
puts "Information about Santa:"
puts "gender: #{santas[1].gender}"
puts "ethnicity: #{santas[1].ethnicity}"
puts "age: #{santas[1].age}"
puts "Santa's reindeers:"
p santas[1].reindeer_ranking

#test celebrate_birthday method
santas[2].celebrate_birthday
puts "age: #{santas[2].age}"
santas[2].celebrate_birthday
puts "age: #{santas[2].age}"
santas[2].celebrate_birthday
puts "age: #{santas[2].age}"

#test get_mad_at method 
santas[1].get_mad_at("Dasher")
p santas[1].reindeer_ranking

#test gender function
puts "Santas's gender was originally #{santas[1].gender}..."
santas[1].gender = "HoHoHo"
puts "but Santa is now #{santas[1].gender}"

#Release 4
santas.each_with_index do |santa, index|
	puts "\n~~~Santa: #{index + 1}~~~"
	puts "Ethnicity: #{santa.ethnicity.capitalize}"
	puts "Gender: #{santa.gender.capitalize}"
	puts "age: #{santa.age}\n\n"
end

