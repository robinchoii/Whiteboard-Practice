string = "14 5 1 - +"
def RPM(string)
  # string = gets.chomp
  string_arr = string.split
  num_arr = []
  stack = []
  string_arr.each do |x|
    if x != "+" && x != "-" && x != "*" && x != "/"
      num_arr <<  x.to_i
    else
      num_arr << x
    end
  end
  # p num_arr
  num_arr.each do |x|
    stack.push(x) unless x == "+" || x == "-" || x == "*" || x == "/"
    if x == "+"
      a = stack.pop(2)
      b = a[0] + a[1]
      stack << b
    elsif x == "-"
      a = stack.pop(2)
      b = a[0] - a[1]
      stack << b
    elsif x == "*"
      a = stack.pop(2)
      b = a[0] * a[1]
      stack << b
    elsif x == "/"
      a = stack.pop(2)
      b = a[0] / a[1]
      stack << b
    end
  end

  puts stack.join("") #17

end

RPM(string)