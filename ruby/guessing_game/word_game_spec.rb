#pokemon game should do....
	# 	choose a random pokemon from the pokemon names instance variable 
	# 	split it by character so that it becomes an array with each letter
	# 	as a value. 
	#   Have the split pokemon name chosen to equal to who’s that 			
	# 	pokemon variable name


	require_relative 'word_game'

	describe Pokemon do
		let(:game) { Pokemon.new }

		it "returns an element from the array" do
			expect(["bulbasaur", "charmander", "pikachu", "squirtle"]).to include(game.pick_pokemon)
		end
	end