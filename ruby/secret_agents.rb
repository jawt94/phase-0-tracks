#Release 2 
#1) Create an encrypt method 

puts "what is the word you'd like to encrypt?"
user_input = gets.chomp 

#define a method that takes string as its argument 
def encrypt(user_input)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
#iterate through the string 
	i = 0 
	while i < user_input.length
where_alphabet = alphabet.index(user_input[i])

#change so that character after z is next character in the alphabet 
	if where_alphabet == 25
		where_alphabet = -1
	end 
		user_input[i]=alphabet[where_alphabet + 1]
		i +=1 
	end #while i 
	user_input 
end #encrypt 

encrypt(user_input)
puts (user_input)

#2) Create a decrypt method 
puts "what is the word you'd like to decrypt?"
user_input2 = gets.chomp 

#defining method that takes string as argument 
def decrypt(user_input2)
	
#define alphabet as string
	alphabet = "abcdefghijklmnopqrstuvwxyz"

#iterate through encrpyted string
	i = 0 
	while i < user_input2.length 
		where_alphabet = alphabet.index(user_input2[i])
		user_input2[i]=alphabet[where_alphabet -1]
		i +=1
	end #while i 
	user_input2
end #method 

decrypt(user_input2)
puts user_input2

#Release 3: Test your program
#Our Driver Code 

#ask the user for a password
puts "enter your password"
pass = gets.chomp 

#encrypt a few passwords
first = "abc"
puts encrypt(first) #should return "bcd" 
puts first 

second = "zed"
encrypt(second) #should return "afe"
puts second 

third = "bcd" 
decrypt(third) #should return "abc"
puts third

fourth = "afe"
decrypt (fourth)
puts fourth #should return "zed"


#Release 4: Try a nested method call
print decrypt(encrypt("swordfish"))

#Release 5: add an interface
print "Would you like to encrypt or decrypt a password (e/d)" 
choice = gets.chomp 
print "What is your password?"
password = gets.chomp

if choice == 'e' 
	encrypt(password)
	puts password 
elsif choice == 'd' 
	decrypt(password)
	puts password 
else 
	puts "Please enter 'd' for decrypt or 'e' for encrypt."
end 