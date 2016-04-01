
# def reverse_string(string)
#   split_string = string.chars
#   size = split_string.length/ 2

#   size.times do |index|
#     temp = split_string[index]
#     split_string[index] = split_string[split_string.length - 1 - index]
#     split_string[split_string.length-1 - index] = temp
#   end

#   return split_string.join("")

# end


# ***********REFACTORED***************
def reverse_string(string)
  first_index  = 0
  last_index = string.length - 1

  while first_index < last_index
    #swapping!
    string[first_index], string[last_index] =
    string[last_index], string[first_index]
    #move towards the middle
    first_index  += 1
    last_index -= 1
  end

  return string

end



p reverse_string("abc")