# def add_digits(num)
#   num_str = num.to_s
#   num_arr = num_str.chars
#   sum = 0
#   sum_str = sum.to_s
#   num_arr.each do |num|
#     sum = sum + num.to_i
#     sum_str = sum.to_s
#   end
#   if sum_str.length > 1
#     num = sum
#     add_digits(num)
#   else
#     return sum
#   end
# end

def add_digits(num)
  sum = num % 9
  if sum == 0 && num > 0
    sum = 9
  else
    return sum
  end
end

