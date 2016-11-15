def permutation(string1, string2)
  if string1.length != string2.length
    return false
  end

  letters_hash = {}

  string1.each_char { |char|
    if letters_hash[char] == 1
      letters_hash[char] += 1
    else
      letters_hash[char] = 1
    end
  }

  string2.each_char {|char|
    if letters_hash[string2[char]] == nil || letters_hash[string2[char]] < 0
      return false
    else
      letters_hash[string2[char]] -= 1
    end

  }
  return true
end

string1 = "robin"
string2 = "nibor"

p permutation(string1, string2)
