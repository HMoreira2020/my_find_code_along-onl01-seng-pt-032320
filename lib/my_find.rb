require 'pry'

def my_find(collection)
  i = 0 
  while i < collection.length 
    if yield(collection[i])  #i passed to block below, and if i is divisible by 3 and 5 then..
      return collection[i] #return collection[1]. this way it builds a new array of values that make the block return to true and this is why this method is the find method. 
    end 
    i += 1 
  end 
end

collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }