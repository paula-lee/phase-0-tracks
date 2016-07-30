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

class Pokemon
	attr_reader :whos_that_pokemon, :guess_count, :game_over

	def initialize
		# @pokemon_names = ["bulbasaur", "charmander", "pikachu", "squirtle"]
		@guess_count = 0
		@game_over = false
		@user_input = []
	end

	def get_pokemon_name(pokemon_name)
		@whos_that_pokemon = pokemon_name.split("")
		p @whos_that_pokemon
		@output = []
		(0..@whos_that_pokemon.length-1).each do 
			@output << '_'
		end
		p @output = @output.join(" ")
	end



end

# game = Pokemon.new
# p game.pick_pokemon
# game.split_pokemon_name