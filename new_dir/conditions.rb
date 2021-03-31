puts "What is your Age"
x = gets.chomp.to_i
if x == 27
    puts "You are Qualified"
elsif
    x <= 30
    puts "You are Old but  Qualified"
else
    (x == 27) and (x <= 30)
    puts "You are not Qualified"
end

#ternary operation
p true ? " henry" : "onu" 
#henry
p false ? "henry " : "onu"
#=> " onu"
#In Ruby, every expression evaluates to true when used in flow control, except for false and nil.
a = nil
if a
  puts "how can this be true?"
else
  puts "it is not true"
end

a = 1
if a
  puts "how can this be true?"
else
  puts "it is not true"
end

#case: it doesnt take a range like if/else
puts "Years of Experience"
a = gets.chomp.to_i
 answer = case a
 when  2
  puts  "GOOD"
 when  5 
  puts  "Excellent"
 else
    puts "POOR"
 end
 puts answer

p (32 * 4) >= 129 #false 32*4 == 128
p false != !true # false
p true == 4 # false
p false == (847 == '874') #true
p (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false#only (328/4) == 82) is true,so it returns true

def methods(string)
 if string.size > 10
     p string.upcase
 else
  p string.downcase
 end
end
 methods("Engineer Henry")
methods("Henry")
