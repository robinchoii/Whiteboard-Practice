require 'set'
a = [1,2,3,4,5]
b = [4,2,2,4,3]

# def duplicate(arr1,arr2)
#   join_arr = arr1 + arr2
#   hash_arr = {}
#   join_arr.each do |num1|
#    hash_arr[num1] = 0
#     join_arr.each do |num2|
#       if num1 == num2
#         hash_arr[num1] += 1
#       end
#     end
#     if hash_arr[num1] > 1
#       hash_arr.delete(num1)
#     end
#   end
#   hash_arr.each {
#     |key, value| p "#{key}"
#   }
# end

def duplicate(arr1,arr2)
  join_arr = arr1 + arr2
  doubles = {}
  join_arr.each do |element|
    doubles[element] = 0
    join_arr.each do |element2|
      if element2 == element
        doubles[element] += 1
      end
    end
  end
  doubles.each { |key, value|
    if value > 1
      puts "The duplicates are #{key}."
    end
  }
end
p duplicate(a,b)