# Bubble Sort 

def bubble_sort(arr)
  return arr if arr.size <= 1
  loop do
    swapped = false
    (arr.size - 1).times do |i|
      if arr[i] > arr[i+1] 
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true 
      end
    end
    return arr unless swapped 
  end  
end  

# Bubble Sort By

def bubble_sort_by(arr)
  return arr if arr.size <= 1
  loop do
    swapped = false
    (arr.size - 1).times do |i|
      if yield(arr[i], arr[i+1]) > 0 
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true 
      end
    end
    return arr unless swapped 
  end  
end  

# Call Bubble Sort By

p bubble_sort_by(["hi", "height", "hello"]) { |left,right| left.length - right.length }
 
