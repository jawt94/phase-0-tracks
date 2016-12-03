# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # creates an empty hash called list
  #splits the input based on items separated by spaces
  # set default quantity as 1 
  # print the list to the console 
# output: output is created in a hash ( item => quantity)
def list_creator(items)
	list = {}
	items.split.each do |item|
		list[item] = 1
	end

	list
end

my_list = list_creator("carrots apples cereal pizza")

# Method to add an item to a list
# input: takes in hash, item name and optional quantity
# steps: 
#1) check to see if there is any items currently existing in the list
#2) if the list contains items, we update/add to the current quantity
#3) otherwise, if no items exist in the list, append item with quantity to list
# output:updated list in hash

def add_item(list,item,quantity =1)
	if list.include?(item)
		list[item] += quantity
	else
		list[item] =quantity
	end 

	list
end 

p add_item(my_list, 'lemonade', 2)
p add_item(my_list, 'tomatoes',3)
p add_item(my_list, 'onion',1)
p add_item(my_list, 'ice cream', 4)

# Method to remove an item from the list
# input: takes in a list (hash) and item as a string
# steps: 
#1 check if list contains item and deletes the item identified
#2 if not print error
# output: prints the list

def remove_item(list,item)
	if list.include?(item)
		list.delete(item)
	else
		puts "ERROR. #{item} does not exist."
	end 

	list
end 

p remove_item(my_list,'lemonade')

# Method to update the quantity of an item
# input: takes in list as a hash, item name and quantity 
# steps: sets quantity as current quantity inputed
# output: prints updated list as hash

def update_list(list,item, quantity =1)
	list[item] = quantity
	list
end 

update_list(my_list, 'ice cream', 1)

# Method to print a list and make it look pretty
# input: list as hash
# steps: 
#first as a header states "Here are the items you need to buy"
#second, iterate through the items and indicates that the user needs to buy (item) in (number of quantities)
# output: more aesthetically pleasing list

def print_list(list)
	list.length 
	puts "You need to buy #{list.length} items in total."
	puts "Here are the items you need to buy:"
	list.each { |item, quantity| puts "Buy #{quantity} #{item}"}
end 

print_list(my_list)

#Release 4: Reflection
#1) Psuedocoding helps to outline the steps needed and makes creating the actual code a lot easier
#2) Hashes are easier because it allows you to update the quantity
#3) A method implicitly returns the value unless explicitly given command to return value earlier
#4) Anyhting can be passed as long as the method accounts for the data type
#5) Through input and output variables into another variable
