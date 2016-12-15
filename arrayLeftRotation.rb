n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
a = gets.strip
a = a.split(' ').map{|num| num.to_i}

def left_rotate(n, k, a)
  temp = a.slice!(0,k)
  rotated_array = a.concat(temp)
  return rotated_array
end

left_rotate(n,k,a)
