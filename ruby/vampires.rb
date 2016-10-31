#Process Multiple Employees
print "How many employees will be processed?"
number_of_employees = gets.chomp.to_i
i = 0 
while i < number_of_employees

	#Interview the Vampire
	#Name
	print "What is your name?"
	name = gets.chomp

	#Age & Year of birth
	print "How old are you?"
	age = gets.chomp.to_i
	
	print "What year were you born?"
	year_of_birth = gets.chomp.to_i
	real_age = Time.new.year - year_of_birth

	#Garlic Bread
	print "Our company cafeteria serves garlic bread. Should we order some for you (y/n)?"
	garlic_bread = gets.chomp

	#health insurance 
	print "Would you like to enroll in the company's health insurance? (y/n)"
	health_insurance = gets.chomp 

	result = " "
	
	#Vampire Detection Logic
	if name == "Drake Cula" || "Tu Fang"
		result = "Definitely a vampire."
	elsif age == real_age &&  (garlic_bread == "y" || health_insurance == "y")
		result = "Probably not a vampire."
	elsif age != real_age && (garlic bread == "n" || health_insurance == "n")
		result = "Probably a vampire."
	elsif age!= real_age && garlic_bread== "n" && health_insurance== "n"
		result = "Almost certainly a vampire"
	else 
		result = "Results inconclusive"
	end 

	#Check for Suspicious Allergies
	print "Do you have any allergies?"
	allergy = gets.chomp 
	
	until allergy == "sunshine" || allergy == "done"
		print "What other allergies do you have?"
		allergy = gets.chomp
			if allergy == "sunshine"
			result = "Probably a vampire"
		end
	end
	
	#Display conclusive identity data
	puts "Name: #{name}"
	puts "Age: #{age}"
	puts "Year of birth: #{year_of_birth}"
	puts "Real Age: #{real_age}"
	puts "Garlic bread? (y/n): #{garlic_bread}"
	puts "Health insurance? (y/n): #{health_insurance}"
	puts "Allergy: #{allergy}"
	puts "Conclusion: #{result}"

	puts "Actually, nevermind! What do these questions have to do with anything? Let's all be friends."
	i +=1
end 