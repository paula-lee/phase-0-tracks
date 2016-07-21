# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".insert(1, "o")
# => “zoom”

p "enhance".center(20)
# => "    enhance    "

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

p "the usual".concat(" suspects")
#other ways to add a word
p "the usual" << " suspects"
p "the usual" + " suspects"
#=> "the usual suspects"

p " suspects".prepend("the usual")
# => "the usual suspects"

p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

p "The mystery of the missing first letter".sub(/^./,"")
#other way to remove the first letter or character
p "The mystery of the missing first letter".reverse.chop.reverse
p "The mystery of the missing first letter".gsub(/^./,"")
# slice(0) would work but the string would have to equal a variable for
# it to have the correct output

# => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

p "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# ASCII values have ordinal values assigned to them called the ordinal position.
# So each character in the ASCII has an integer value assigned to it and 122 
# happens to be assigned to z. 

puts "How many times does the letter 'a' appear in this string?".count("a")
# => 4