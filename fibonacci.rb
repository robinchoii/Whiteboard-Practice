def fibonacci_number(n)

  return 0 if n == 0
  return 1 if n == 1

  counter = 0

  fib_num = 0
  next_num = 1
  temp = 0

  while counter < n
    temp = fib_num + next_num
    fib_num = next_num
    next_num = temp
    counter += 1
  end
  return fib_num
end

p fibonacci_number(7)
