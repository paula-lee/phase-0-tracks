# create a class called Pokemon
	# initialize method
		# create an instance variable called pokemon names and it is equal to
		# an array of pokemon names.
		# create an instance variable called guess count that is equal to zero
		# create an instance variable called game over and have that equal to
		# false.
		# create an instance variable called user input that equals to a blank array

	# define method pick pokemon
	# 	player 1 will enter a pokemon name that player 2 has to guess
	# 	split it by character so that it becomes an array with each letter
	# 	as a value. 
	#   Have the split pokemon name chosen to equal to who’s that 
	# 	pokemon variable name

	# define method check letter	
	# 	if the letter from the input is included in the who’s that pokemon variable
	# 		input that letter into the user input array.	

	# 	iterate through the whos that pokemon array with the value and the index
	# 		iterate through the user input array with the value
				# if whos that pokemon value is equal to user input value
					# display the correct letter the user input
				# else put that the letter inputted does not exist


class Pokemon
	attr_reader :guess_count, :game_over, :pokemon_name, :whos_that_pokemon

	def initialize(pokemon_name)
		# @pokemon_names = ["bulbasaur", "charmander", "pikachu", "squirtle"]
		@guess_count = 0
		@game_over = false
		@user_input = []
		@pokemon_name = pokemon_name
		convert_pokemon_name
		# @whos_that_pokemon = pokemon_name
	end

	def convert_pokemon_name
		@whos_that_pokemon = @pokemon_name.split("")
		@output = []
		(0..@whos_that_pokemon.length-1).each do 
			@output << '_'
		end
		@output.join(" ")
	end

	def check_letter(letter)
		if @whos_that_pokemon.include?(letter)
			@user_input << letter
		else 
			puts "There is no #{letter}. Guess again"
		end

		@whos_that_pokemon.each_with_index do |char, index|
			@user_input.each do |letter|
				if char == letter
					@output[index] = letter
				end
			end
		end
		@output.join(" ")
	end




end

game = Pokemon.new("bulbasaur")
game.convert_pokemon_name
puts game.check_letter("b")