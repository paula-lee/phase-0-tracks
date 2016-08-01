# create a class called Pokemon
	# initialize method
		# initialize has a parameter called pokemon_name that takes an argument from the user
		# create an instance variable called guess count that is equal to zero
		# create an instance variable called game over and have that equal to
		# false.
		# create an instance variable called user input that equals to a blank array
		# create an instance variable called pokemon name and have it equal to the argument passed
		# create an instance variable called num of guesses 
		# and have it equal to the length of the pokemon name

	# define method pick pokemon
	# 	split pokemon name by character so that it becomes an array with each letter
	# 	as a value. 
	#   have the split pokemon name equal to who’s that 
	# 	pokemon variable name

	# define method check letter	
	# 	if the letter from the input is included in the who’s that pokemon variable
	# 		if user input already has letter from previous guess
	# 			put you already guess this letter
	# 		else input that letter into the user input array.
	# 	else this letter is not in the word		

	# 	iterate through the whos that pokemon array with the value and the index
	# 		iterate through the user input array with the value
				# if whos that pokemon value is equal to user input value
					# display the correct letter the user input
				# else put that the letter inputted does not exist

	# define method guess_count_check
	# 	if the pokemon name is equal to the output
	# 		put congratulations you won!
	# 	if the guess count exceeds the pokemon name length
	# 		put game over, you lose


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

	def guess_count_check
		if @whos_that_pokemon == @output
			puts "Congratulations you won!!!!!!!"
			@game_over = true
		elsif @whos_that_pokemon.length <= @guess_count
			@game_over = true
			puts "GAME OVER! Wow.... that bad huh?"
		else
			@game_over
		end
	end


end



#USER INPUT
puts "Welcome to the Pokemon Guessing Game!!!!!!!!"
puts
puts "Player 1 will type in the word for Player 2 to guess :)"
puts
puts "Player 1: Please type in one of the four starter pokemon, then press enter:"
puts "Choices: bulbasaur, charmander, squirtle, pikachu"
puts "(NOTE: you won't be able to see what you are typing)"
choose_pokemon = STDIN.noecho { |i| i.gets}.chomp
game = Pokemon.new(choose_pokemon)

puts "Alright Player 2, let's start guessing!!"
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




