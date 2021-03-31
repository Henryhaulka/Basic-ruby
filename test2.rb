#for loop
# countdown3.rb

x = gets.chomp.to_i

for i in 1..x do
  puts i
end

puts "Done!"
# countdown4.rb

x = [1, 2, 3, 4, 5]

for i in x do
  puts i
end

puts "Done!"

# conditional_while_loop_with_next.rb

x = 0
#Conditionals Within Loops
while x <= 10
  if x == 3
    x += 1
    next
  elsif x.odd?
    puts x
  end
  x += 1
end

# conditional_while_loop_with_break.rb

x = 0

while x <= 10 #true conditions
  if x == 7
    break
  elsif x.odd?
    puts x
  end
  x += 1
end

#iterators# practice_each.rb

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

names.each {|names| puts names}

# practice_each.rb

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end

#recursion
def doubler(start)
  puts start * 2
end
 doubler(1)


def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end
doubler (1)

# fibonacci.rb

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(5)

x = [1, 2, 3, 4, 5]
x.each do |a|
  puts a
end

#Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.


 while x != "STOP" do
  puts "capitalize the word \"stop\" "
  x = gets.chomp.to_s
 end

x = ""
while x != "STOP" do
  puts "Hi, How are you feeling?"
  x = gets.chomp
  
end

#Write a method that counts down to zero using recursion.
def count_down(num)
  if num <= 0
   p num
  else
    puts num
     count_down(num -1)
  end
end
 count_down(4)
 # build a guessing game with limit
 secret_word = "Engineer"
 input_word = ""
 guess_count = 0
 guess_limit = 3
 out_of_guess = false
 puts "Who designs a machine?"
 input_word = gets.chomp.to_s
 while secret_word != input_word and !out_of_guess
  if guess_count <= guess_limit
  puts "Who designs a machine?"
  input_word = gets.chomp.to_s
  guess_count += 1
  else
    out_of_guess = true
  end
  
 
 end
 if out_of_guess
    puts "You lose"
    else
      puts "You won!"
  end
   puts "You won!"