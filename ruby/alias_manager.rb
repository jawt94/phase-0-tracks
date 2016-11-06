#define method for swapping first & last name
def name_swapper(name)
	name.split(' ').reverse.join(' ')
end 

#define method for data entry
def create_alias(name)
	#Define vowels & constants
	vowels = ["a","e","i","o","u"]
	consonants = ["b","c","d","e","f","g","h","j","k","l","m","p","q","r","s","t","v","w","x","y","z"]
	
	new_alias = name_swapper(name.downcase!)
	char_arr = new_alias.split('')
	new_arr = char_arr.map do |char|
		#vowels 
		if vowels.include?(char)
    		vowels.rotate(1)[vowels.index(char)]
    	#consonants
    	elsif consonants.include?(char)
       		consonants.rotate(1)[consonants.index(char)]
    	else
        	char
    	end     #if     
	end #loop 
	#generate fake name
	fake_name = new_arr.join.split.map(&:capitalize).join(' ')
	end #create_alias

#Prompt user for name to generate fake name 
def interface()
	database= Hash.new 
	loop do 
		puts "Please enter the person's full name. Type 'quit' to exit."
		name = gets.chomp
		break if name.downcase =="quit" 
		database[name.to_sym] = create_alias(name)
	end #loop
	database.each {|key, value| p "#{key} is also known as #{value}"}
end #interface

interface()