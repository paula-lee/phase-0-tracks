#release 0

# def search_array(array, number)
#   counter = 0
#   result = 0
  
#   array.each do
#     if array.include?(number)
#       result = counter
#     end
#     counter += 1
#   end
#   return result
# end 

# array = [42,89,23,1]
# puts search_array(array, 1)
# # => 3
# puts  search_array(array, 24)
# # => nil

#release 1
def fib(num)
  first = 0
  second = 1
  sequence = []
  
  num.times do
    keep_first = first
    first = second
    second = keep_first + second
    sequence << keep_first
  end

  return sequence
end

puts fib(6).inspect
puts fib(100).inspect

# #verify that fib(100) is == to 218922995834555169026

if fib(100).include?(218922995834555169026)
	puts true
else
	puts false
end

=begin
release 3
1. Researching the bubble sort
2. Found a general bubble_sort template and just wrote down what each line does
   ran it to make sure that what I said is correct and then print certain lines 
   just to get a closer look at what it's actually doing
3. Paula - I personally feel quite curious as I felt that to swap array values
    to another array values would be much simpler, also when I first saw the method 
    I thought it looked more complicated but after talking it out, it makes a lot of
    sense as to what it is doing. I should probably write out what the method is doing
    so that I understand what's going on much easier and if there is a part I don't 
    understand it would be easier to look up. 
4. 

=end


#bubble_sort method has one parameter that takes an array
def bubble_sort(array)
  #define a variable by getting the length of the array
  n = array.length
  #starting a loop
  loop do
    #defining swapped to the boolean value of false
    swapped = false

    #length of the array minus 1, looping using the times method
    (n-1).times do |i|
      #if the array value is less than the array value plus 1
      if array[i] > array[i+1]
        #then array value, and array value plus 1, now equal to array value plus one and array value (swapped respectively)
        array[i], array[i+1] = array[i+1], array[i]
        #changes the swapped boolean value to true
        swapped = true
      end
    end
    #if the array values do not swap then break the loop
    break if not swapped
  end
  #implicit return the array
  array
end

















