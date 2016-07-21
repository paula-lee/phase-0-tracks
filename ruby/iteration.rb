hollywood_actors = {
	"Angelina Jolie" => "Girl Interrupted", 
	"Chris Pratt" => "Guardians of the Galaxy",
	"Tom Hanks" => "Forrest Gump",
	"Liv Tyler" => "Lord of the Rings"
	 }

weather = [97, 105, 96, 100, 92]

#.each on hash
# hollywood_actors.each do |actor, film|
# 	puts "#{actor} was in #{film}."
# end

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