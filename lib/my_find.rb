require 'pry'

def my_find(collection)
  i = 0 
  while i < collection.length 
    if yield(collection[i])  #i passed to block below, and if i is divisible by 3 and 5 then..
      return collection[i] #return collection[1]. it returns the new array with the first value that made the block return to true. and because no code will execute after return it will stop after the first element that returns true. 
    end 
    i += 1 
  end 
end

collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }