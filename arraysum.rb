arr= [1,2,3,4,5]

def arraySum(arr)
   sum = 0
    for num in arr
        sum = sum + num
    end
    return sum
end

p arraySum(arr)