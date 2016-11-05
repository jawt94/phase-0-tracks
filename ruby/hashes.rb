#Pseudocode
#Define a new client
client = Hash.new 

#Asks the user a list of questions 

puts "What is the client's name"
	name = gets.chomp.capitalize

puts "What is the client's age?"
	age = gets.chomp.to_i 

puts "How many children does the client have?"
	no_of_children = gets.chomp.to_i

puts "What decor theme does the client want?"
	decor_theme = gets.chomp.capitalize

#Name 
client[:Name] = name 

#Age
client[:Age] = age  

#Children
client[:"Number of children"] = no_of_children

client[:"Decoration theme"] = decor_theme

#Print the inputted data, ask if correct. 
puts "Here's a summary for #{name}:"
	client.each do |key,value|
		puts "#{key}: #{value}"
end 

#Ask user if they'd like to edit any of the data entered 
puts "Would you like to edit anything? (y/n)"
	user_input = gets.chomp 
		if user_input == "n"
				puts "Your profile is complete"
			elsif user_input == "y"
			#iterate through keys and ask which needs correcting
				keys = client.keys
				keys.length.times do |iterate| 
				p "Enter #{iterate+1} to update #{keys[iterate]}"
		end
		#prompt user to enter which data information they'd like to edit and update the hash 
			key_to_change = gets.chomp
			if key_to_change == "1"
				puts "What is the client's name?"
				name = gets.chomp.capitalize
				client[:Name] = name
			elsif key_to_change == "2"
				puts "What is the client's age"
				age = gets.chomp.to_i
				client[:Age] = age
			elsif key_to_change == "3"
				puts "How many children does the client have?"
				no_of_children = gets.chomp.to_i
				client[:"Number of children"] = no_of_children
			elsif key_to_change == "4"
				puts "What decor theme does the client want?"
				decor_theme = gets.chomp.capitalize
				client[:"Decoration theme"] = decor_theme
		end 

#Summarize edited entry 
puts "Your profile is complete! Here's the summary for #{name}:"
	client.each do |key,value|
		puts "#{key}: #{value}"
	end
end 
