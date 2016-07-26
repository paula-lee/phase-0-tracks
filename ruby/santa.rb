class Santa

	def initialize(gender, ethnicity, santa_name)
		@gender = gender
		@ethnicity = ethnicity
		@santa_name = santa_name
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		# puts "Initializing Santa instance..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

end

# santa_info = []

# genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# santa_name = ["Santa", "Santa Claus", "Kris", "Kris Kringle", "Pere Noel", "Saint Nick", "Nick"]

# puts "Making santas"
# genders.length.times do |num|
# 	santa_info << Santa.new(genders[num], ethnicities[num], santa_name[num])
# end

p santa_info



# santa = Santa.new("girl", "asian")
# santa.speak
# santa.eat_milk_and_cookies("white chocolate chip")
# santa.reindeer_ranking
# santa.age