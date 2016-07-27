module Shout
	def yell_out(phrase)
		repeat = rand(5)
		repeat.times {puts "#{phrase.upcase}!!!!"}
	end
end



class Cheerleaders
	include Shout
end


class Birthday
	include Shout
end


cheer = Cheerleaders.new
cheer.yell_out("go wolves")

birthday_chant = Birthday.new
birthday_chant.yell_out("happy birthday")



# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + " :D"
# 	end
# end


# puts Shout.yell_angrily("ARGHHHH")
# puts Shout.yelling_happily("YAYYYYYY")
