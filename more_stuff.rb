#Regex
# stands for regular expression. 
#A regular expression is a sequence of characters that form pattern matching rules,
#and is then applied to a string to look for matches.
#how we'd implement this using the =~ operator

p "powerball" =~ /b/# => 5
p "powerball" =~ /q/ #=> nil

#
def has_a(string)
    if string =~ /a/
        
        puts "#{string} has a match of 'a'"
    else
        puts "#{string} don't have a match of 'a'"
    end
    string
end
 has_a('Henry')
 has_a('anambra')
 has_a('ant')
 has_a('ANT')#it is case sensitive

 #using the .match method
 # boolean_matchdata.rb

def has_a_b?(string)
  if /b/.match(string)
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")

#ruby standard classes
p Math.sqrt(400) #=> 20.0
p Math.log(20)

#PI is a constant
p Math::PI #=> 3.141592653589793

#using the Time class to check for date
p Time.new(2021, 03,26)
new = Time.new(2021, 03,26)
p new.monday?# false
p new.friday?# true

#Variables as Pointers
p a = "hi there"
p b = a 
p a = "not here" #at this point, a !="hi there " but  a== "not here", b == "hi there"

p a = "hi there"
p b = a
p a << ", Bob" # a == b == "hi there,Bob"..we pushed to a

#Block and Proc
# Blocks, like parameters, can be passed into a method just like normal variables.
# This isn't incredibly hard, and it's very powerful.
def block_caller(&block)
    block.call #standard caller for block and proc
end

block_caller do
    puts "This is a block caller"
end

# passing_block.rb

def take_block(number, &block)# a variable and a block
  block.call(number * 3)# operation can be added
end

number = 42
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end

#proc - Procs are blocks that are wrapped in a proc object,and stored in a variable to be passed around. 
talk = Proc.new{ "I am talking"}
p talk.call

talk = Proc.new do |name|
    puts "I am talking to #{name}"
end
talk.call('henry')

#passing_proc.rb

proc = Proc.new do |num|
        puts "#{num}. Proc being called in the method!"
end
 
def take_proc(proc)
    arr = [1, 2, 3, 4]
    arr.each do |num|# indiviual iterator
        proc.call(num) #caller same process as in block
    end
end
take_proc(proc)

 

#exception handling - Exception handling is a specific process that deals with errors in a manageable and predictable way
# It also has a syntactic structure using the reserved words begin, rescue, and end to signify exception handling.
# exception_example.rb

names = ['bob', 'joe', 'steve', nil, 'frank']
    names.each do |name|
        puts "my name is #{name}"
       end
    
names = ['bob', 'joe', 'steve', nil, 'frank']
    begin
        names.each do |nam|
            puts "my name is #{nam} and has #{nam.size} letters"
            rescue
                puts "NoMethodError Item does have a length" #if rescue is not used we get -in `each'
#more_stuff.rb:122:in `block in <main>': undefined method `size' for nil:NilClass (NoMethodError)
        end
    end
 
#using inline rescue
names.each{ |x| puts "#{x} is #{x.size} letters"} rescue puts "something went wrong!"#we see this method ends 
#immediately it got to the error and didn't print the next line

zero = 0
puts "Before method"
zero.each{ |item| puts "#{item}"} rescue puts "Something went Wrong!"
  

#example
def divider(number, divisor)
    begin
    a = number/divisor
    puts "Answer = #{a}"
    rescue
        puts "ZeroDivisionError"
    end
end
divider(16.0, 12)
divider(0, 12)
divider(12, 0)

def space_out_letters(person)
  return person.split("").join(" ")#the space betw the " "will create a space betw d words(john)
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John")


b = "Henry"
def na(pa)
    p pa.split
    p pa.split("").join(" ")
end
na(b)

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends do
  if friend != 'Brian'
  invited_list.push(friend)
  end
end

invited_list #=> ["Sharon", "Leo", "Leila", "Arun"]


friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.select { |friend| friend != 'Brian' }
 #=> ["Sharon", "Leo", "Leila", "Arun"]

 friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.reject { |friend| friend == 'Brian' }
 #=> ["Sharon", "Leo", "Leila", "Arun"]