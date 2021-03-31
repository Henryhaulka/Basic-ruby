# The for loop works like do each,it doesnt mutate
def my_do(arr)
    for i in arr do
      puts  i * 3 #for every index in arr
      i += 1 
    end
    arr
end
a = [2, 4, 5, 1]
p my_do(a)

#each
def m_do(arr)
    arr.each do |i|
      puts  i * 3
      i += 1 
    end
    arr
end
a = [2, 4, 5, 1]
p m_do(a)


