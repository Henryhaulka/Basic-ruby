puts "Input a number"
number = gets.chomp.to_i
 if number < 0
   p "This is a negative number"
    elsif number <= 50
      p  "This number is betw 1 and 51"
    elsif (number >= 51)  && (number <= 100) 
   p  "This number is betw 51 and 100"
    else
   p     "This number is greater than 100"
    end
    puts number

    # Snippet 3
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end
