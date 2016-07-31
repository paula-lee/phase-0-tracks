# pseudocode
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

	



	require_relative 'word_game'

	describe Pokemon do
		let(:game) { Pokemon.new("bulbasaur") }

		it "stores the pokemon name given in initializion" do
			expect(game.pokemon_name).to eq "bulbasaur"
			# puts game
		end

		it "gets pokemon name from user and return underscores the length of the pokemon name" do
			expect(game.convert_pokemon_name).to eq("_ _ _ _ _ _ _ _ _")
			# puts game
		end

		it "inserts the users input if correct, to be displayed" do
			expect(game.check_letter("b")).to eq("b _ _ b _ _ _ _ _")
			# puts game
		end


	end