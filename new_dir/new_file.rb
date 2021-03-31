#we proved that method definitions cannot modify arguments passed in to them permanently.
def some_method(number)
  number = 7 # this is implicitly returned by the method
end

a = 5
some_method(a)
puts a

a = [1, 2, 3]

# Example of a method definition that modifies its argument permanently
# note the use  of p here
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
p mutate(a) #the last element poppped
p "After mutate method: #{a}" #array after pop

a = [1, 2, 3]

# Example of a method definition that modifies its argument permanently
def mutate(array)
  array.pop
end

puts "Before mutate method: #{a}"
mutate(a)
puts "After mutate method: #{a}"


# Example of a method definition that does not mutate the caller
a = [1, 2, 3]

def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
p no_mutate(a) #the last element of the array
p "After no_mutate method: #{a}"

#  using a method not the return keyword
def said(ac)
    ac + 3
end
return_value = said(4)
puts return_value

#using the return keyword
def said(ad)
    return ad * 3
    ad * 4 #this won't be processed bcos it will be return at ac+3 cos of the return keyword
end
return_value = said(5)
puts return_value

 #chaining method
 def hen(n)
    n + 3
 end
 back = hen(5)
back.times { puts "henry"}

#basic operation
a = 'i am man'
puts a.size.to_s
 #method call as arguments
 
 def add(a, b)
     a - b
     a + b
     a * b
 end
 puts add(10, 3) 


#add(subtract(80, 10), multiply(subtract(20, 6), add(30, 5)))
def subtract(a,b)
    a-b
end
puts subtract(80, 10)

def subtract(a,b)
    a-b
end
puts subtract(20, 6)

def add(a,b)
    a + b
end
puts add(30, 5)

def multiply(a,b)
    a * b
end
 puts multiply(subtract(20, 6), add(30, 5))


def add(a,b)
    a + b
end
puts add(subtract(80, 10), multiply(subtract(20, 6), add(30, 5)))

#difference between puts and p
# puts is just use for print and not for running programmes while p is used for storing, debugging and programming 
def give_me_money
puts "I want 1 million naira"
end
 
puts my_bank_balance = give_me_money # with puts here doesn't have the ability to debug the return value

#p
def give_me_money
puts "I want 1 million naira" #empty block of code
end
 
p my_bank_balance = give_me_money # p has the ability to return a value hence nil value is returned cos the method give_me_money doesn't have block of code *puts is a prog its just a printer
    

def give_me_money
puts "I want 1 million naira"
      " my bank balance is 5000" #block of code 
end
 
my_bank_balance = give_me_money
puts my_bank_balance

def give_me_money
puts "I want 1 million naira"
      " my bank balance is 5000" #block of code 
end
 
my_bank_balance = give_me_money
p my_bank_balance
#don't forget that your block of code should either b a string or number,else error. 
#more explanations on p,puts and print
x = 2
#=> 2

puts x= 2
#2
#=> nil

print x = 2
#2=> nil

 p x=2
#2
#=> 2

def scream(words)
 words = words + "!!!!"
 return words + "Good"
 puts word
end
p scream("yippe")