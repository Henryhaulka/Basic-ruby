# # loop_example.rb

loop do
  puts "This will keep printing until you hit Ctrl + c"
  break #stops the loop,if not used, the prog will continue and may crash you pc
end

a = [100, 1, 50, 21,200, 10, 2, 0.5, 1.1, -1]
def sort(arr)
    x = arr.length
    loop do
        change = false
        (x-1).times do# x-1 to eliminate the 0 index i.e we have 10 elements and 10 positions/places but when sort starts 2 nos places will be taken to b one place hence the total element space will be 1 short
            |i = 0|# from index 0 |i|positive or negative
            if
                arr [i] > arr[i + 1]
                arr[i], arr[i + 1] = arr[i + 1],  arr[i]
                change = true
            end
        end
        break if change == false # or write "if not change"/"!change" (if arr[i] !> arr[i + 1])

    end
    arr
end
p sort(a)

# conditional_loop.rb

i = 0
loop do
  i += 2
  puts i
  if i == 10
    break       # this will cause execution to exit the loop
  end
end
 
#using the next keykword
# next_loop.rb

i = 0
loop do
  i += 2
  if i == 4
    next        # skip rest of the code in this iteration
  end
  puts i
  if i == 10
    break
  end
end
# while loop
puts "Enter a positive number"
num = gets.chomp.to_i
 while num >= 0 # takes a condition equal to boolean true
   puts num
    num -= 1
 end
 puts "done!"

 # until loop is the opposite of while/conditions that takes false condition
puts "Enter a number"
x = gets.chomp.to_i
 until x < 0
    puts x
    x -= 1
 end
    # perform_again.rb

loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end

#for loop
# countdown4.rb
# countdown4.rb

x = [1, 2, 3, 4, 5]

for i in x do
  puts i
end

puts "Done!"


def day_name(day)
     
    case day
    when "mon"
       puts  "monday"
        when "tue"
        puts "tuesday"
    when "wed"
        puts "wednesday"
    else
       puts "not mon - wed"

    end
    

end

puts day_name("mon")

# #building a guessing game with while


guess_word = "Engineer"
 guess_input = ""
guess_limit = 3
guess_count = 0
out_of_guess = false
while guess_input != guess_word and out_of_guess == false #or use !out_of_guess-ruby understands english
    if guess_count < guess_limit #if you get the word b4 the 3x limit,it exist the while loop and move to 128
        puts "Who designs machine"
        guess_input = gets.chomp.capitalize
        guess_count += 1
    else#when you exceed your 3 times limit,this is code is executed
      out_of_guess = true#we dont have guesses again, so it exists the while loop
    end        
end
if out_of_guess#here, using line 118 conditions
  puts "You lose"#since we have exist limit 3
elsif !out_of_guess && guess_input == guess_word #not out of guess and guess_input == guess_word
  puts "You won!!!" #at 130, u can also use out_of_guess = true
end
#explaining the example above
 #at 118 since at the beginning of the game,we are not out of guess,out of guess= false
 #199,if the condition of while loop is met, it executes the if statement,
 #but if its not (i.e guess_input == guess_word) we exist the loop and 
 #go to line 128 and sees we are !out_of_guess  and puts you won
 #