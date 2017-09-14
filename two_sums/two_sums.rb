require 'byebug'

# Brute Force => O(n^2)
def bad_two_sum?(arr, target)
  arr.each_with_index do |num1,idx1|
    i = idx1 + 1
    while i < arr.length
      return true if num1 + arr[i] == target
      i+=1
    end
  end
  false
end

# Using Binary_search  =>  O(n log n)
def okay_two_sum?(arr, target)
  arr.each_with_index do |el,idx|
    if bi_search(arr[idx+1..-1], target, el)
      return true
    end
  end
  false
end

def bi_search(arr, target, element)

  return false if arr.length <= 0

  midpoint = arr.length/2
  left = arr.take(midpoint)

  right = arr.drop(midpoint+1)
  debugger
  case target <=> arr[midpoint] + element
  when 1
    bi_search(right, target, element)
  when 0
    return true
  when -1
    bi_search(left, target, element)
  end
end

# Using HASH => O(n)
def two_sum?(arr, target)
  hash = {}

  arr.each do |el|
    diff = target - el
    return true if hash[diff] == true
    hash[el] = true
  end
  false
end

if __FILE__ == $PROGRAM_NAME
  arr = [0, 1, 5, 7, 10, 11, 12, 15, 19, 32]
  arr = [7, 5, 1, 0 ]

  # arr = [0, 1]
# p  bad_two_sum?(arr, 6)
# p  bad_two_sum?(arr, 5)
# p  bad_two_sum?(arr, 9000)
# p okay_two_sum?(arr,1

p two_sum?(arr, 6)
p two_sum?(arr, 8)
end
