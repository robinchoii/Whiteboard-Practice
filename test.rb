# def matchDonuts(donutConstraintPairs, candidateConstraintPairs)
#     count = 0
#     match = []
#     while count < candidateConstraintPairs.length do
#     candidateConstraintPairs.each do |member|
#       # p member
#       donutConstraintPairs.each do |donut|
#         # p donut
#         if donut[1] == member[1]
#           pair = Array.new(2) {|x, y| y = member[0], x = donut[0] }
#         end
#       end
#     end
#     count += 1
#   end
#   # p match.first(2)
# end
# def matchDonuts(donutConstraintPairs, candidateConstraintPairs)
#   donuts = Hash[donutConstraintPairs.map {|key, value| [key, value]}]
#   team = Hash[candidateConstraintPairs.map {|key, value| [key, value]}]
#   # p donuts
#   # p team
#   match = []
#   team.each_pair {|member, type1|
#     donuts.each_pair {|donutname, type2|
#       if "#{type2}" == "#{type1}"
#         if match.include?(Array.new(2) {|name, donut| name = member, donut = donutname})
#           next
#         else
#           match << Array.new(2) {|name, donut| name = member, donut = donutname}
#         end
#       end
#     }
#   }
#   p match.sort_by! {|name| name}.flatten
# end



# donutConstraintPairs = [
#   ["cruller", "vegan"],
#   ["eclair", "chocolate"]]

# candidateConstraintPairs = [
#   ["jose", "vegan"],
#   ["john", "chocolate"]]


# matchDonuts(donutConstraintPairs, candidateConstraintPairs)











  # while count < candidateConstraintPairs.length do
  #   candidateConstraintPairs.each do |member|
  #     # p member
  #     donutConstraintPairs.each do |donut|
  #       # p donut
  #       if donut[1] == member[1]
  #         match << Array.new(2) {|x, y| y = member[0], x = donut[0] }
  #         # p match
  #       end
  #     end
  #   end
  #   count+=1
  # end
  # puts match.join(" ")







  # for member in candidateConstraintPairs.length
  #   for donut in donutConstraintPairs.length
  #     if candidateConstraintPairs[member][1] == donutConstraintPairs[donut][1]
  #       match = [candidateConstraintPairs[member], donutConstraintPairs[donut]]
  #       donut += 1
  #     end
  #     member += 1
  #   end
  #   p match
  # end





# def sumOfMultiplesOf3or5(number)
#   sum = 0
#   count = 0
#   max = 1000/number.to_f

#   if number == 3 || number == 5
#     if max%number == 0
#       while count < max
#         sum = sum + number*count
#         count+=1
#       end
#     else max%number == 1
#       while count < max
#         sum = sum + number*count
#         count+=1
#       end
#     end
#   else
#      raise "Error, enter 3 or 5."
#   end
#   return sum
# end


def weirdOrNotWeird(num)
  if 1 <= num && num <= 100 && num % 2 != 0
    print "Weird"
    elsif 2 <= num && num <= 5 && num % 2 == 0
      print "Not Weird"
    elsif 6 <= num && num <= 20 && num % 2 == 0
      print "Weird"
    elsif 20 < num  && num <= 100 && num % 2 == 0
    print "Not Weird"
  else
    print "N must be between 1 and 100"
  end
end