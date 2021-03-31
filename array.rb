#is an ordered list with zero-index,seperated with a comma, can contain a string, number ,boelean etc
array = [1, 'Bob', 4.33, 'another string']
p array[3] #=> "another string"

p array.first #=> 1
p array
p array.last#=> "another string"
p array[2] #=> 4.33

#modifying arrays
#1.pop method - removes the last item in an array..it mutates i.e changes the original array
p array.pop
p array

#2. push method - adds to an array at the end , it also mutates
array.push("another string")# you can also write like this array <<("another string")
p array
array << ("another string") #this is the 2nd mutation
p array

#unshift method - very similar to the push method only dat the added item is at the beginning of the arr
array.unshift("another string")

#map- iterates over an array applying a block to each element of the array and returns a new array with those results. 
#it doesnt mutate the original array
arr = [1, 2, 3, 4]

p arr.map{|num| num * 3 }
p arr

#delete_at() - helps eliminate/delete values in a particular index..it is destructive and mutative
p arr.delete_at(3) # deletes index 3
p arr

#delete() similar to delete_at but doesnt use the index rather uses the element it's self
my_pets = ["cat", "dog", "bird", "cat", "snake"]
my_pets.delete("cat")
p my_pets

#uniq - deletes any duplicate values that exist, then returns the result as a new array.doesnt mutate
 b = [1, 1, 2, 2, 3, 3, 4, 4]
 p b.uniq
 p b

#*adding a ! at the back of a non mutate method makes it mutate e.g
p b.uniq!
p arr.map!{|num| num * 3 }

#select method- doesnt mutate the array,selects with a condition
z = [1, 2, 3, 4, 5, 6, 7]
p z.select{ |x| x > 2}
p z


#comparing array
a = [1, 2, 3]

b = [2, 3, 4]

a == b #=> false
b.pop #4
b.unshift(1)# => [1, 2, 3]
 a == b#=> true

 #array to a string,this methods doesnt mutate 
 a = [1, 2, 3]
p a.to_s #put the array in a quote
p a.join #takes off the square bracket
p a

#common array methods
#1.include?-returns a boelean
p a.include?2

#2.flatten -he flatten method can be used to take an array that contains nested arrays and create a one-dimensional array.
a = [1, 2, [3, 4, 5], [6, 7]]
p a.flatten

#3,each_index- The each_index method iterates through the array much like the each method, 
#however the variable represents the index number as opposed to the value at each index.
a = [1, 2, 3, 4, 5]
p a.each_index { |i| puts "This is index #{i}" }
#This is index 0
#This is index 1
#This is index 2
#This is index 3
#This is index 4
#returns=> [1, 2, 3, 4, 5]

#each_with_index(value, index) 
#but the values in || of all method can be assigned any character,cos each method we already have
#a standard, we just input a variable to run it
p a.each_with_index{ |val, idx| puts "This is index #{idx} with value #{val}" }

#sort method
a = [5, 3, 8, 2, 4, 1]
p a.sort

#product - comparing 2 arrays in an interesting way
 p [1, 2, 3].product([4, 5]) #=> [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]


#map vs each - map returns a new array(not mutated) but each returns each values and original the array
a = [1, 2, 3]
p a.map { |x| x**2 } #=> [1, 4, 9] performs operations on the array as a whole

a = [1, 2, 3]
p a.map { |x| puts x**2 }#=>1 4 9 = perform operation on each item returns=>[nil, nil, nil] cos not an array


#if block not given i.e block of code 
# returns an enumearator,* this is for each,map,select,etc
a = [1, 2, 3]
p a.map##<Enumerator: [1, 2, 3]:map>

#exercises
# 1. arr = ["b", "a"]
#    arr = arr.product(Array(1..3))
#    arr.first.delete(arr.first.last)

# 2. arr = ["b", "a"]
#    arr = arr.product([Array(1..3)])
#    arr.first.delete(arr.first.last)
p arr = ["b", "a"]
p arr = arr.product(Array(1..3))#Array(1..3) =Array-class with range 1..3
p arr.first
p arr.first.last
p arr.first.delete(arr.first)
p arr

#How do you return the word "example" from the following array?
arr = [["test", "hello", "world"],["example", "mem"]]
p arr.last #["example", "mem"]
p arr.last.first #"example"

#example
arr = [15, 7, 18, 5, 12, 8, 5, 1]

p arr.index(5) #is appearance of 5 in the arr
#=> 3
# 2. arr.index[5]# this is wrong, you get an error

p arr[5]
#=>8