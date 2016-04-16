def matchDonuts(donutConstraintPairs, candidateConstraintPairs)
    count = 0
    match = []
    while count < candidateConstraintPairs.length do
    candidateConstraintPairs.each do |member|
      # p member
      donutConstraintPairs.each do |donut|
        # p donut
        if donut[1] == member[1]
          pair = Array.new(2) {|x, y| y = member[0], x = donut[0] }
        end
      end
    end
    count += 1
  end
  # p match.first(2)
end



donutConstraintPairs = [
  ["cruller", "vegan"],
  ["eclair", "chocolate"]]

candidateConstraintPairs = [
  ["john", "chocolate"],
  ["jose", "vegan"]]


matchDonuts(donutConstraintPairs, candidateConstraintPairs)











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
