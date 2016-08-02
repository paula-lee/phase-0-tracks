# Imagine you are writing a program that must process the interior designer application above. 
# What would a filled-out version of that form look like as a hash? 
# Create a new Ruby file (call it what you like, you won't turn it in) 
# and declare a hash that represents one person's application data.
# Add driver code at the bottom of your file to update some values and 
# maybe add in a new value for whether the person was hired.
# What happens if store a key in a variable, then access the hash using the variable? Does it work?
# What happens when try an expression like your_hash[:name] + your_hash[:address] 
# (or whatever keys you used)? Does it affect the original hash?
# Come up with a few more questions about hashes, and use driver code or documentation to answer them.


interior_application = {
	name: "Mira", 
	address: "123 Spring Drive", 
	email: "m@gmail.com", 
	phone: "555-1234",
	fave_shade_of_blue: "Ocean",
	wallpaper_pref: "Paisley",
	ombre_is: "Fierce"
}


#DRIVER CODE

interior_application[:email] = "mira@vogue.com"
p interior_application[:email]
interior_application[:hired] = true
p interior_application[:hired]
phone_number = :phone
p interior_application[phone_number]
p interior_application[:name] + interior_application[:address]