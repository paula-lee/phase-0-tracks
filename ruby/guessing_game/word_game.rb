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

	# define method guess_count_check
	# 	the guess count will add one each time the user guess a letter
	# 	if the guess count exceeds the pokemon name length
	# 		put ‘you are out of guesses’


class Pokemon
	attr_reader :guess_count, :game_over, :pokemon_name, :whos_that_pokemon

	def initialize(pokemon_name)
		@guess_count = 0
		@game_over = false
		@user_input = []
		@pokemon_name = pokemon_name
		convert_pokemon_name
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

	def check_match
		p @whos_that_pokemon.join(" ")
		if @output.join(" ") == @whos_that_pokemon.join(" ")
			puts "Congratulations you won!!!!!!!"
		else
			puts "Wow.... that bad huh?"
		end

	end

	def guess_count_check
		@guess_count += 1
		if @whos_that_pokemon.length <= @guess_count
			puts "You are out of guesses"
			check_match
			@game_over = true
		else
			puts "You have #{whos_that_pokemon.length - @guess_count} guesses left."
			@game_over
		end
	end


end

# puts "Welcome to the Pokemon Guessing Game"
# puts
# puts "What Pokemon name would you like the player to guess?"
# pokemon = gets.chomp.downcase
# game = Pokemon.new(pokemon)

# puts "Alright let's start!!"
# puts game.convert_pokemon_name

# while !game.game_over
# 	puts "Please guess a letter (You may only put one letter at a time)."
# 	users_guess = gets.chomp
# 	puts game.check_letter(users_guess)
# 	game.guess_count_check
# end



game = Pokemon.new("pikachu")
game.convert_pokemon_name
puts game.check_letter("p")
puts game.guess_count_check
game.convert_pokemon_name
puts game.check_letter("i")
puts game.guess_count_check
game.convert_pokemon_name
puts game.check_letter("k")
puts game.guess_count_check
game.convert_pokemon_name
puts game.check_letter("a")
puts game.guess_count_check
game.convert_pokemon_name
puts game.check_letter("c")
puts game.guess_count_check
game.convert_pokemon_name
puts game.check_letter("h")
puts game.guess_count_check
game.convert_pokemon_name
puts game.check_letter("u")
puts game.guess_count_check


