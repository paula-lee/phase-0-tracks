# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # 1. initialize a hash
  # 2. take string of items, seperate by space
  # 3. set default quantity to zero
  # 4. print the list to the console [can you use one of your other methods here?]
# output: hash
list = {}

def create_list(list, string_of_items)
  item_array = string_of_items.split(" ")

  item_array.each do |item|
    list[item] = 1
  end

  return list
end

p create_list(list, "lemonade tomatoes onions icecream")

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # 1. use hash, item, and quantity as parameters
  # 2. add item to hash, set quantity as value
# output: return updated list
def add_item(list, item, quantity)
  list[item] = quantity

  return list
end

#p add_item(list, "milk", 3)

# Method to remove an item from the list
# input: hash, item
# steps:
  # 1. use hash and item as parameters
  # 2. locate item in the hash as key
  # 3. delete located item (as key)
# output: return updated list
def remove_item(list, item)
  list.delete(item)

  list
end

# Method to update the quantity of an item
# input: hash, item and quantity
# steps:
  # 1. use hash, item, quantity as parameters
  # 2. locate item in hash as key
  # 3. set new value for item
# output: return updated list
def update_item(list, item, quantity)
  add_item(list, item, quantity)
end

p update_item(list, "lemonade", 2)
p update_item(list, "tomatoes", 3)
p update_item(list, "icecream", 4)

p remove_item(list, "lemonade")

p update_item(list, "icecream", 1)

# Method to print a list and make it look pretty
# input: hash
# steps:
  # 1. set program user interface template
  # 2. use item and value as parameters for iteration thru hash
  # 3. for each item, print "you want #number of #item!"
# output: print list in readable format
def print_list(list)
  puts "Here is your grocery list:"

  list.each do |item, quantity|
    puts "You want #{quantity} of #{item}!"
  end

end

print_list(list)






=begin
release 5: reflect
What did you learn about pseudocode from working on this challenge?
There are a lot of things you don't really think about initially and 
don't notice until you start typing out your solution. Making sure you
capture everything is difficult but it makes you realize things you 
didn't account for. 

What are the tradeoffs of using arrays and hashes for this challenge?
It would have been a pain to use an array. It was much easier visually
and effectively to use the hash as we need key/value relationship. The
key/value relationship is needed because you need to keep the item and 
the quantity together and not separated or else it would be difficult
to update and delete the value.

What does a method return?
An argument is passed through the method specified by the parameters to modify or return
a certain result.

What kind of things can you pass into methods as arguments?
You can pass a lot of things like strings, booleans, arrays, hashes, integers, etc.
As long as that is what the parameters are asking for. 

How can you pass information between methods?
Through the parameters. In our grocery list example, we passef the hash variable 'list'
through all of the methods so that each method was able to modify the list. If
we had called the hash inside the method, it would have been local and none of the 
methods would be able to call the hash.

What concepts were solidified in this challenge, and what concepts are still confusing?
Refactoring. Refactoring still gets me sometimes because if the code is not DRY, you still keep it.
I understand more now that if you have different methods that it is different and you want to 
keep that method despite it being the same. However if I had printed each grocery item and 
quantity instead of iterating through and having one puts statement, my code is definitely not
DRY. 
=end












