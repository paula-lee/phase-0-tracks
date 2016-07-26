class Santa
	attr_reader :age, :ethnicity, :reindeer_ranking
	attr_accessor :gender

	def initialize(gender, ethnicity, santa_name)
		@gender = gender
		@ethnicity = ethnicity
		@santa_name = santa_name
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		# puts "Initializing Santa instance..."
	end

	def celebrate_birthday
		@age = @age +=1 
		puts @age
	end

	def get_mad_at(reindeer_name)
		if @reindeer_ranking.include?(reindeer_name)
			@reindeer_ranking = @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name)))
			puts "#{@reindeer_ranking}"
		else
			puts "Error: That is not one of the reindeer names"
		end
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

end

santa_info = []

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
santa_name = ["Santa", "Santa Claus", "Kris", "Kris Kringle", "Pere Noel", "Saint Nick", "Nick"]

# puts "Making santas"
# genders.length.times do |num|
# 	santa_info << Santa.new(genders[num], ethnicities[num], santa_name[num])
# end

p santa_info



santa = Santa.new("girl", "asian", "Pere Noel")
santa.speak
santa.eat_milk_and_cookies("white chocolate chip")
santa.reindeer_ranking
santa.age
santa.celebrate_birthday
santa.get_mad_at("Later")