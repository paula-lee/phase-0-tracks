# pseudocode
# create a method called encrypt_name that can take first and last name
# take the first and last name and make into an array called name_array
	# separate the first and last name by splitting it with a space so that first name is a value
	# and last name is a value
# call .reverse on the split_name array so that it will swap the first name and the last name 
	# originally thought of doing array[0], array[1] = array[1], array[0] to swap but found 
	# .reverse is shorter and cleaner
	# then join the swapped values together so that last name and first name are no longer
	# separate values
# create a new variable called swapped_name and assign it to the new swapped name array
# create a new variable called name_characters and split the swapped_name array into each characters
# call the method vowels and pass name_characters into vowels method
# create a method called vowels
	# define the vowels 
	# if there is a space " ", leave it alone
	# if the vowel is "u", make it an "a"
	# if full_name includes vowels, then return the next vowel letter
	# call the consonants method and pass the changed characters to the consonants method
# create a method called consonants
	# define the consonants
	# if there is a space " ", leave it alone
	# if the vowel is "z", make it an "b"
	# if the full_name includes consonants, then return the next consonant letter
	# join and capitalize the new encrypted name
	# then return the new encrypted name


# RELEASE 0
def encrypt_name(full_name)
	name_array = full_name.split(" ")
	swapped_name = name_array.reverse.join(" ")
	name_characters = swapped_name.split("")
	vowels(name_characters)
end

def vowels(characters)
	vowels = "aeiou"
	new_char = ""
		characters.map! do |char|
			if char == " "
				" "
			elsif char == "u"
				new_char = "a"
			elsif vowels.include?(char)
				new_char = vowels[vowels.index(char)+1]
			else
				char
			end
		end
	consonants(characters)
end

def consonants(characters)
	consonants = "bcdfghjklmnpqrstvwxyz"
	new_char = ""
		characters.map! do |char|
			if char == " "
				" "
			elsif char == "z"
				new_char = "b"
			elsif consonants.include?(char)
				new_char = consonants[consonants.index(char)+1]
			else
				char
			end
		end
	encrypted_name = characters.join("")
	encrypted_name = encrypted_name.split(" ").map! {|name| name.capitalize}.join(" ")
	encrypted_name
end


# RELEASE 1: USER INTERFACE
loop do
	puts "Please input a name you would like to encrypt. If you are done, type 'quit'"
	name = gets.chomp.downcase
	
	break if name == "quit"
	puts encrypt_name(name)
end






# DRIVER CODE
# encrypt_name("felicia torres")