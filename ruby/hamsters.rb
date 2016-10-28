print "what is your name?"
hamster_name = gets.chomp
print "what volume are you"
volume = gets.chomp.to_i
print "what is your fur color?" 
fur_color = gets.chomp 
print "are you a good candidate for adoption? (good/bad)"
adoption_criteria = gets.chomp
print "what is your estimated age?"
est_age = gets.chomp.to_i 
	if est_age == "" 
		est_age = nil 
	end 

print "My name is #{hamster_name}, my volume level is #{volume} and I am a #{adoption_criteria} for adoption. My estimated age is #{est_age}."
