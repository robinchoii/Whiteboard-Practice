function permutation(str1, str2) {
  letters = {}

  for (var i = 0; i < str1.length; i++) {
    if (letters[str1[i]] === 1) {
      letters[str1[i]]++
    } else {
      letters[str1[i]] = 1
    }
  }

  for (var i = 0; i < str2.length; i++) {
    if ( isNaN(letters[str2[i]]) || letters[str2[i]] < 0) {
      return false
    } else {
      letters[str2[i]]--
    }
  }
  return true
}

str1 = 'robin'
str2 = 'nibor'

console.log(permutation(str1,str2))
