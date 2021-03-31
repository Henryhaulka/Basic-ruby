#A hash is a data structure that stores items by associated keys.
#Most commonly, a hash is created using symbols as keys and any data types as values. 
#All key-value pairs in a hash are surrounded by curly braces {} and comma separated.

#old_syntax_
hash = {:name => 'bob'}
p hash #=> {:name=>'bob'}

#new_syntax
new_hash = {name: 'bob'}#=> {:name=>'bob'}

#examples
person = { height: '6 ft', weight: '160 lbs' }
p person #=> {:height=>'6 ft', :weight=>'160 lbs'}
p person[:weight] #=> 160 lbs

#adding to an existing hash
 person[:age] = 26
 p person

 #removing from an hash
 person.delete(:height)
 p person

#merging hashes
new_hash = {height: "6 ft", birth: 1995}
 p person.merge(new_hash) # doesnt mutate the hash
 p person

 p person.merge!(new_hash)#mutates

 #iterating over an hash
 person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}
 #using each here |keys, value|
 p person.each{ |x, y| puts "This is key #{x} with value pair #{y}"}

#Hashes as Optional Parameters
def greeting(name, option = {})
   if option.empty?
    puts "My name is #{name}"
   else
    puts "My name is #{name}, I live in #{option[:city]} and #{option[:age]} years old"
   end
end
p greeting('HENRY')
p greeting("Henry", city: "Lagos", age: "55")

#common hash method
#has_key?/has_value?
name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19}
p name_and_age.has_key?("Bob")#=> true
p name_and_age.has_key?("henry")#=> false

p name_and_age.has_value?(31)
p name_and_age.has_value?(0)

#select method -The select method allows you to pass a block and will return any 
#key-value pairs that evaluate to true when ran through the block.
p name_and_age.select{ |k, v| k == "Bob" || v == 31}

#fetch method
#The fetch method allows you to pass a given key and it will return the value for that key if it exists
p  name_and_age.fetch('Bob') #=> 42
# p  name_and_age.fectch('Henry') => returns KeyError

#hash to array
p  name_and_age.to_a #=>[["Bob", 42], ["Steve", 31], ["Joe", 19]]

#keys and values
p name_and_age.keys #=> ["Bob", "Steve", "Joe"]

p name_and_age.values #=> [42, 31, 19]

#exercises
#Given a hash of family members, with keys as the title and an array of names as the values, 
#use Ruby's built-in select method to gather only immediate family members' names into a new array.
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
p family.select{ |x, y| x == :sisters or x == :brothers}
immediate_family = family.select{ |x, y| x == :sisters or x == :brothers}
p immediate_family.values
p immediate_family.values.flatten



