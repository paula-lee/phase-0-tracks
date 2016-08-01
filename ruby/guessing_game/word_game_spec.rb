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
		let(:game) { Pokemon.new("pikachu") }

		it "stores the pokemon name given in initializion" do
			expect(game.pokemon_name).to eq "pikachu"
			# puts game
		end

		it "gets pokemon name from user and return underscores the length of the pokemon name" do
			expect(game.convert_pokemon_name).to eq("_ _ _ _ _ _ _")
			# puts game
		end

		it "inserts the users input if correct, to be displayed" do
			expect(game.check_letter("p")).to eq("p _ _ _ _ _ _")
			# puts game
		end

		it "returns congratulation message if the user inputs the correct pokemon name" do
			game.check_letter("p")
			game.check_letter("i")
			game.check_letter("k")
			game.check_letter("a")
			game.check_letter("c")
			game.check_letter("h")
			game.check_letter("u")
			expect(game.check_match).to eq "Congratulations you won!!!!!!!"
		end

		it "counts how many guesses and returns how many are left" do
			expect(game.guess_count_check).to be false
		end

	end