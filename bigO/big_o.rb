require 'byebug'

def my_min(list)
  smaller_num = list.first
  list.each do |el1|
    list.each do |el2|
      if el2 < el1
        smaller_num = el2
      end
    end
  end
  smaller_num
end

def my_min2(list)
  smaller_num = list.first
  list.each do |el|
    if el < smaller_num
      smaller_num = el
    end
  end
  smaller_num
end

def l_sub_num(list)
  arr = []
  list.each_with_index do |el,idx|
    i = idx
    while i < list.length
      arr << list[idx..i].to_a
      i+=1
    end
  end
  debugger

  largest_sum = 0
  arr.each do |sub_arr|
    sum = sub_arr.inject(:+)
    if sum > largest_sum
      largest_sum = sum
    end
  end
  largest_sum
end

def l_sub_num2(list)
  largest_sum = 0
  temp_sum = 0
  list.each do |el|
    temp_sum += el
    if temp_sum > largest_sum
      largest_sum = temp_sum
    elsif temp_sum < 0
      temp_sum = 0
    end
  end
  largest_sum
end


if __FILE__ == $PROGRAM_NAME
  list = [5, 3, -7]
  p l_sub_num(list)
  p l_sub_num2(list)
end
