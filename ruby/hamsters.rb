print "what is your name?"
hamster_name = gets.chomp
print "what volume are you"
volume = gets.chomp.to_i
print "what is your fur color?" 
fur_color = gets.chomp 
print "are you a good candidate for adoption?"
adoption_criteria = gets.chomp
print "what is your estimated age?"
est_age = gets.chomp.to_i 
	if est_age = "" 
		est_age = nil 
	end 

