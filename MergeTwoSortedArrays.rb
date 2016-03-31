a = [21,34,51]
b = [11,33,61]

# def merge_arrays(array1, array2)
#   sorted_array = []
#   sorted_array.push(array1.zip(array2))
#   sorted_array.flatten!.sort!
#   return sorted_array
# end

def merge_arrays(array1, array2)
  length_of_arrays = (array1 + array2).length
  merged_array = [nil] * length_of_arrays

  first_array_index = 0
  second_array_index = 0
  merged_array_index = 0

  while merged_array_index < length_of_arrays
    first_array_num = array1[first_array_index]
    second_array_num = array2[second_array_index]

    if first_array_index >= array1.length
      merged_array[merged_array_index] = array2[second_array_index]
      second_array_index += 1
    elsif second_array_index >= array2.length
      merged_array[merged_array_index] = array1[first_array_index]
      first_array_index += 1
    elsif first_array_num < second_array_num
      merged_array[merged_array_index] = first_array_num
      first_array_index += 1
    else
      merged_array[merged_array_index] = second_array_num
      second_array_index += 1
    end
    merged_array_index +=1
  end
  return merged_array
end


p merge_arrays(a,b)


# 4 cases
# a > b
# a < b
# a is exhausted
# b is exhausted
