a = [54,22,13]
b = [43,15,26]

def merge_arrays(array1, array2)
  sorted_array = []
  sorted_array.push(array1.zip(array2))
  sorted_array.flatten!.sort!
  return sorted_array
end

p merge_arrays(a,b)