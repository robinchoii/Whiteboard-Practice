# require 'set'


def is_palindrome?(word)
  word_split = word.chars
  word_hash = {}

  word_split.each do |letter|
    word_hash[letter] = 0

    word_split.each do |char|
      if char == letter
        word_hash[letter] += 1
      end
    end
    if word_hash[letter] % 2 == 0
      word_hash.delete(letter)
    end
  end
  if word_hash.length <= 1
    return true
  else
    false
  end

end

# def is_palindrome?(word)
#   chars = Set.new


#   (0...word.length).each do |x|
#     char = word[x]
#     if chars.include? char
#       chars.delete(char)
#     else
#       chars.add(char)
#     end
#     p chars
#   end
#   return chars.length <= 1

# end

p is_palindrome?("civic")


# make a hash out of the the string, setting the values to 0
# loop through the array, increasing the count for the hash
