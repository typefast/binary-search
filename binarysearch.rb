
def binarySearch(array, target)
  min = 0
  max = array.length - 1
  
  loop do
    guess = ((min + max) / 2).floor
    return "Nope not there" if max < min 
    if array[guess] == target
      return guess
    elsif array[guess] < target 
      min = guess + 1
    else
      max = guess - 1
    end
  end
end

values = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
index_result =  binarySearch(values, 17)
puts "Found prime at index: #{index_result}"
