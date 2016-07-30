# create a class called Pokemon
# 	declare an initialize method
# 		create an instance variable called pokemon names and it is equal to
# 		an array of pokemon names.
# 		create an instance variable called guess count and have that equal to zero
# 		create an instance variable called game over and have that equal to
# 		false.
# 		create an instance variable called who’s that pokemon and have that
# 		equal to a blank string.

	# define method pick pokemon
	# 	choose a random pokemon from the pokemon names instance variable 
	# 	and split it by character so that it becomes an array with each letter
	# 	as a value. Have the split pokemon name chosen to equal to who’s that 			
	# 	pokemon variable name

class Pokemon
	attr_reader :pokemon_names, :whos_that_pokemon, :guess_count, :game_over, :user_input

	def initialize
		@pokemon_names = ["bulbasaur", "charmander", "pikachu", "squirtle"]
		@guess_count = 0
		@game_over = false
		@user_input = []
	end

	def pick_pokemon
		@whos_that_pokemon = @pokemon_names.sample.split("")
	end

	# def split_pokemon_name
	# 	p @whos_that_pokemon.split("")
	# end
end

game = Pokemon.new
p game.pokemon_names
# p game.pick_pokemon.split("")
# game.split_pokemon_name