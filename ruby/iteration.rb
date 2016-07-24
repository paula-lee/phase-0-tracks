#Release 1
hollywood_actors = {
	"Angelina Jolie" => "Girl Interrupted", 
	"Chris Pratt" => "Guardians of the Galaxy",
	"Tom Hanks" => "Forrest Gump",
	"Liv Tyler" => "Lord of the Rings"
	 }

weather = [97, 105, 96, 100, 92]

# .each on hash
hollywood_actors.each do |actor, film|
	puts "#{actor} was in #{film}."
end

#.each on array
puts "Before .map"
weather.each do |temperature|
	puts "The weather temperature is #{temperature} degrees."
end

weather.map! do |temperature|
	temperature += 1
end

#changed weather to add one degree to each temperature
puts "After .map"
puts weather



# Release 2
sample_array = [1, 2, 3, 4, 5, 6]
sample_array.delete_if {|number| number < 5}
sample_array.keep_if {|number| number < 5}
sample_array.select {|number| number.even?}
sample_array.reject {|number| number.odd?}
sample_array.take_while {|number| number < 3}


sample_hash = {penny: 1, nickel: 5, dime: 10, quarter: 25}
sample_hash.delete_if {|coin, value| value < 5}
sample_hash.keep_if {|coin, value| value > 5}
sample_hash.select {|coin, value| value > 5}
sample_hash.reject {|coin, value| value < 5}
sample_hash.keep_if {|coin, value| value > 5}
