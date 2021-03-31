#The code inside the block will “replace” yield keyword in the method definition
def one_yield
  yield #if yhis is not added,code won't be executed
end

def multiple_yields
  yield
  yield #since we have 2 yield, the result be b out twice
end

one_yield { puts "one yield" }

multiple_yields { puts "multiple yields" }

#Here yield is process only if a block is passed during method call.
def option
    x = "Hello"
    y = "Henry"
    yield(x, y) if block_given?#means if block is given run the code, if this isn't included we get a localjumperror  #yield is also taking an argument
end

  p option
 option{ |x, y| p "#{x} '#{y}' welcome"}

 option do |x, y| 
  p "#{x} '#{y}' welcome"
end