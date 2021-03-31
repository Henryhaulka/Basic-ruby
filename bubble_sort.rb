array = [100, 50, -2, -0.5,  0.5]
def bubble_sort(arr)
    n = arr.size
    i = 0
    while i < (n -1) #since we have 5 element which is == 4 indexexs i.e 0 1 2 3 4#while here is an iterator
        if arr[i] > arr[i + 1]
            arr[i], arr[i + 1] = arr[i + 1], arr[i]
            i = 0 #return to index 0 and iterate
        else
            i += 1 # go to the next index
        end
    end
        arr #returner
end
p bubble_sort([100, 50, -2, -0.5,  0.5])

def bubble_sort_by(arr)
    n = arr.size
    i = 0
    while i < (n -1) #since we have 5 element which is == 4 indexexs i.e 0 1 2 3 4
        if yield(arr[i], arr[i + 1]).positive?
            arr[i], arr[i + 1] = arr[i + 1], arr[i]
            i = 0 #return to index 0 and iterate
        else
            i += 1 # go to the next index
        end
    end
        arr
end
p bubble_sort_by(['henryhaulka','hi','hello']){ |left, right| left.size - right.size}

#using the loop method- you can either set the true or false condition first and 
#remember to use the break keyword to exit the loop else it keeps running and might crash your pc

def bubble_sort(arr)
    n = arr.size
    loop do 
        swapped = false 
        (n -1).times  do |i| #.times iterator
             if arr[i] > arr[i + 1]
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                swapped = true
             end        
        end
        break if swapped == false
    end
        arr
end
p bubble_sort([100, 50, -2, -0.5,  0.5])


def bubble_sort_by(arr)
    n = arr.size
    loop do 
        swapped = false 
        0.upto(n-2)  do |i| #.upto iterator
             if yield(arr[i],arr[i + 1]).positive?
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                swapped = true
             end        
        end
        break if swapped == false
    end
      arr  
end
p bubble_sort_by(['henryhaulka','hi','hello']){ |left, right| left.size - right.size}

def bubble_sort(arr)
    n = arr.size
    swapped = true
    while swapped #while loop accepts a true boelean
        swapped = false
        (n -1).times  do |i|
            if arr[i] > arr[i + 1]
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                swapped = true
            end
       end
    end
        arr #returner
end
p bubble_sort([100, 50, -2, -0.5,  0.5])

def bubble_sort(arr)
    n = arr.size
    swapped = false
    until swapped #while loop accepts a true boelean
        swapped = true
        (n -1).times  do |i|
            if arr[i] > arr[i + 1]
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                swapped = false
            end
       end
    end
        arr #returner
end
p bubble_sort([100, 50, -2, -0.5,  0.5])

def bubble_sort(arr)
    n = arr.size
    i = 0
    until i >= (n -1) #until as an iterator,until i >= n-1, the ffg code should run
        if arr[i] > arr[i + 1]
            arr[i], arr[i + 1] = arr[i + 1], arr[i]
            i = 0 #return to index 0 and iterate
        else
            i += 1 # go to the next index
        end
    end
        arr #returner
end
p bubble_sort([100, 50, -2, -0.5,  0.5])


