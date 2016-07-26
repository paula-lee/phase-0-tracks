class Santa
	attr_reader :age, :ethnicity, :reindeer_ranking
	attr_accessor :gender, :santa_name

	def initialize(gender, ethnicity, santa_name)
		# puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@santa_name = santa_name
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(140)
	end


	#getter methods
	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	# def reindeer_ranking
	# 	@reindeer_ranking
	# end

	# #setter method
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

	def celebrate_birthday
		@age = @age +=1 
		return @age
	end

	def get_mad_at(reindeer_name)
		if @reindeer_ranking.include?(reindeer_name)
			@reindeer_ranking = @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name)))
			puts "The new ranking is: #{@reindeer_ranking}"
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

# santa_info = []

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
santa_name = ["Santa", "Santa Claus", "Kris", "Kris Kringle", "Pere Noel", "Saint Nick", "Nick"]
cookie_type = ["chocolate chip cookie", "sugar cookie", "white chocolate chip cookie", "oatmeal raisin cookie", "m&m cookie"]

puts "Here are the list of santas and their information: "
random_count = rand(10) #could change to 10k but it's too much so I settled for 10
random_count.times do |num|
	santa = Santa.new(genders.sample, ethnicities.sample, santa_name.sample)
	puts "----------------------------------------------------------------------------------------"
	puts "About Santa #{num+1}: "
	# puts "#{santa.speak}"
	# puts "#{santa.eat_milk_and_cookies(cookie_type.sample)}"
	puts "My santa name is #{santa.santa_name}, I am #{santa.age} years old, I am #{santa.gender}, and I am #{santa.ethnicity}."
	random_reindeer_name = santa.reindeer_ranking.sample
	puts "#{santa.santa_name} got mad at #{random_reindeer_name} and is now last in the reindeer ranking."
	puts "#{santa.get_mad_at(random_reindeer_name)}"
	puts "It's #{santa.santa_name}'s birthday! #{santa.santa_name} is now #{santa.celebrate_birthday}!!"
end





# santa = Santa.new("girl", "asian", "Pere Noel")
# santa.speak
# santa.eat_milk_and_cookies("white chocolate chip")
# santa.reindeer_ranking
# santa.age
# santa.celebrate_birthday
# santa.get_mad_at("Comet")