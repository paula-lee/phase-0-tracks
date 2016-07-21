#pseudocode
#prompt designer/user for client information
#create hash by inputting the key values
	#client's name (string)
	#age (integer)
	#number of children (integer)
	#decor theme (string)
	#has pets (boolean)
	#wants plants (boolean)
#then put the input values from the designer/user with key values
#convert input to string, boolean, or integer
#print out the hash
#ask the user if there is anything they would like to change (no loop)
#show user the list of key names they can choose from
	#if none, skip
	#else if user types the key name, prompt for a new value
	#update the user input from string to symbol then update the key to the new value
#print latest version of hash


puts "What is the client's name?"
name = gets.chomp

puts "What is the client's age?"
age = gets.chomp.to_i

puts "How many children does the client have?"
num_of_children = gets.chomp.to_i

puts "Type of decor theme the client wants?"
decor_theme = gets.chomp

puts "Does the client have pets? (y/n)"
pets = gets.chomp.downcase
has_pets = (pets == "y" || pets == "yes")

puts "Does the client want plants? (y/n)"
plants = gets.chomp.downcase
wants_plants = (plants == "y" || plants == "yes")

client_details = {
	"name" => name,
	age: age,
	num_of_children: num_of_children,
	decor_theme: decor_theme,
	has_pets: has_pets,
	wants_plants: wants_plants
}

puts client_details

puts "------------------------------------------------------------------"

p client_detail_labels = client_details.keys
puts "Is there anything you would like to change from the labels listed? If none, type 'none'."
change_details = gets.chomp

if change_details == "none"
	puts "Great! All of the client's details are saved."
elsif change_details != "none"
	detail_to_sym = change_details.to_sym
	puts "What is the new value for #{change_details}?"
	update_detail_values = gets.chomp
	client_details[detail_to_sym] = update_detail_values
end

puts client_details






