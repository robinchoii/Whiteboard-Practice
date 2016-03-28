numbers = [1,5,3,2,6,8,4,7,0,9]
# def highest_product(array)
#   if array.length < 3
#     raise StandardError, "Give me an array with 3 numbers"
#   end
#   total = 0
#   sorted_array = array.sort
#   highest_array = sorted_array.pop(3)
#   highest_array.inject() do |product, num|
#     total = product * num
#   end
#   return total
# end


# ****REFACTORED****
def highest_product(array)
  if array.length < 3
    raise StandardError, "Give me an array with 3 numbers"
  end
  total = 1
  sorted_array = array.sort
  highest_array = sorted_array.pop(3)
  highest_array.each do |num|
    total *= num
  end
  return total
end

p highest_product(numbers)