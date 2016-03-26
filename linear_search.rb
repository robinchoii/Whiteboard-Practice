def linear_search(target, array)
  index = 0
  for number in array
    if target == number
      return index
    end
    index += 1
  end
  return nil
end
