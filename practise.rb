# print "Hello wolrd"
puts "hello world"
       puts "   /|"
       puts "  / |"
       puts " /  |"
       puts "/___|"


my_name = "Henry"
my_age = "in my Last 20's"
my_state = "a Nigerian"

 puts ("i am  " + my_name)
 puts ("i am " + my_age)
 puts ("i am " + my_state)
 puts "i am a African"

puts "This man said 'Go'" 
puts 'This man said \'Go\''

#adding strings
a = "10" 
puts ("i am " + a) #method 1
puts (" i am #{a}") #method 2

#number methods
puts 12.divmod(5)
#=> [2, 2] 

 puts 12.remainder(5)
#=> 2

#hashes
dictionary = { "one" => "eins", "two" => "zwei", "three" => "drei" }
puts dictionary["one"]
 my = { ist_name: 'henry', last: 'onu', middle: 'chibuike' }
  puts my[:middle]
#=> "chibuike"

a = 'henry is a boy'
b = ' and henry is tall'
puts (a + b)
puts ("a #{b}")
puts "onu \n 'henry'"

#arrays
names = ['henry', 'dennis', 'ayo']
puts names[2]
#=> "henry"

person = { height: '6 ft', weight: '160 lbs' }
puts person[:height]

#string to integers
"4".to_i
#=> 4
#integer to string
4.to_s
#=> "4"

#Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place
 thousands = 5369 / 1000
 hundreds = 5369 % 1000 /100
 tens = 5369 % 1000 %100/10
 units = 5369 % 1000 %100% 10
 
 puts "thousand: #{thousands}"
 puts "hundred: #{hundreds}"
 puts "ten: #{tens}"
 puts "unit: #{units}"

[1, 2, 3].each do |num|
  puts num
end
#instead of typing all with puts, you can use amethod approach
def say(greetings)
  puts greetings
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")

# can modify easily
def say(words)
  puts words + " here"
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")

x = 0
5.times do 
       x += 2
end
puts x

#x = 0
#5.times do
  #     x += 1
     #  y = x
#end
#puts y we get an error bcos the outer scope couldn't access the inner scope
#but inner scope can access var in the outer
#hence we initial y in the outer scope
x = 0
y = 0
5.times do
       x += 1
       y = x
end
puts y





#name out put
 puts "What is your name"
 name = gets.chomp

 puts "Hello " + name
 #integertimes method
 5.times do
       puts 'Hello ' + name
 end

 puts 'what is your fistname'
 first_name = gets.chomp
 puts 'what is you lastname'
 last_name = gets.chomp
 puts ("so your fullname is " + first_name + " " + last_name + " DEV")

#age output

 puts "How old are you?"
 age = gets.chomp.to_i

 puts "In 5 years time You will be "
 puts age + 5

 puts "In 10 years time You will be "
 puts age + 10 