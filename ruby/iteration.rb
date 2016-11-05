#hash
new_h = {}
new_h[:name]="James Hash"
new_h[:address] = "1234 5th Ave, New York, NY 54321"
new_h[:email]="james_hash@gamil.com"
new_h[:phone]="212-123-1234"
new_h[:preferred_blue]="skyblue"
new_h[:wallpaper]=["Parsley", "Chevron"]
new_h[:ombre] = "Fierce"

#array
sites = ["New York", "Chicago", "Hong Kong", "San Francisco", "Sydney"]

puts "Original data:"
p new_h

#iterate through hash with .each 
new_h.each do |label, value|
	puts "Applicant #{label}: #{value}."
end

puts "After .each loop:"
p new_h 

puts "after deleting ombre"
new_h.delete(:ombre)
p new_h 

#original array
p "Original array:"
p sites

#iterate through array with .each
sites.each do |city|
	puts "my favorite city to visit is #{city}!"
end

#new array 
p "After .each iteration:"
p sites

puts "after filtering elements with lengths less than 8"
sites.delete_if {|city| city.length<8}
p sites 

#iterate through array with .map with new sites
sites.map! do |city| 
	p "my favorite city to visit is #{city}!"
end

#new array 
p "After .map! iteration:"
p sites

