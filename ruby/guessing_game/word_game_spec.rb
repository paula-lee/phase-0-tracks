# pseudocode
	# initialize method
		# create an instance variable called pokemon names and it is equal to
		# an array of pokemon names.
		# create an instance variable called guess count that is equal to zero
		# create an instance variable called game over and have that equal to
		# false.
		# create an instance variable called user input that equals to a blank array

	# define method pick pokemon
	# 	choose a random pokemon from the pokemon names instance variable 
	# 	split it by character so that it becomes an array with each letter
	# 	as a value. 
	#   Have the split pokemon name chosen to equal to who’s that 
	# 	pokemon variable name



	require_relative 'word_game'

	describe Pokemon do
		let(:game) { Pokemon.new }

		#test initalize
		it "returns the array of pokemon from pokemon names" do
			expect(game.pokemon_names).to eq(["bulbasaur", "charmander", "pikachu", "squirtle"])
		end

		it "returns the initial guess count is at zero" do
			expect(game.guess_count).to eq(0)
		end

		it "returns that the game is not over which equals to false" do
			expect(game.game_over).to be false
		end

		it "returns initially a blank array from the user input variable" do
			expect(game.user_input).to eq([])
		end

		





	end