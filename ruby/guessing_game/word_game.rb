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


require 'io/console'

class Pokemon
	attr_reader :guess_count, :num_of_guesses, :pokemon_name, :game_over

	def initialize(pokemon_name)
		@guess_count = 0
		@game_over = false
		@user_input = []
		@pokemon_name = pokemon_name
		convert_pokemon_name
		@num_of_guesses = @whos_that_pokemon.length
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
			if @user_input.include?(letter)
				puts "You already guessed #{letter}. Try again!"
			else
				puts "Great guess!!"
				@user_input << letter
			end
		else
			@guess_count += 1
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

	# def check_match
	# 	if @output.join(" ") == @whos_that_pokemon.join(" ")
	# 		"Congratulations you won!!!!!!!"
	# 	else
	# 		"GAME OVER! Wow.... that bad huh?"
	# 	end

	# end

	def guess_count_check
		if @whos_that_pokemon == @output
			puts "Congratulations you won!!!!!!!"
			@game_over = true
		elsif @whos_that_pokemon.length <= @guess_count
			# puts "You are out of guesses"
			@game_over = true
			puts "GAME OVER! Wow.... that bad huh?"
		else
			# puts "You have #{whos_that_pokemon.length - @guess_count} guesses left."
			@game_over
		end
	end


end

puts "Welcome to the Pokemon Guessing Game!!!!!!!!"
puts
puts "Player 1 will type in the word for Player 2 to guess :)"
puts
puts "Player 1: Please type in one of the four starter pokemon, then press enter:"
puts "bulbasaur, charmander, squirtle, pikachu"
puts "(NOTE: you won't be able to see what you are typing)"
choose_pokemon = STDIN.noecho { |i| i.gets}.chomp
game = Pokemon.new(choose_pokemon)

puts "Alright Player 2, let's start!!"
puts game.convert_pokemon_name

while !game.game_over
	puts "Please guess a letter (You may only put one letter at a time)."
	users_guess = gets.chomp.downcase

	puts game.check_letter(users_guess)
	game.guess_count_check
	puts "You have #{game.num_of_guesses - game.guess_count} guesses left"
end



# RSPEC TEST DRIVER CODE
# game = Pokemon.new("pikachu")
# puts game.convert_pokemon_name
# puts game.check_letter("p")
# puts game.guess_count_check
# puts game.convert_pokemon_name
# puts game.check_letter("p")
# puts game.guess_count_check
# puts game.convert_pokemon_name
# puts game.check_letter("z")
# puts game.guess_count_check

# while !game.game_over
# 	puts "Type letter"
# 	letter = gets.chomp
# 	puts game.check_letter(letter)
# 	puts game.guess_count_check
# end



