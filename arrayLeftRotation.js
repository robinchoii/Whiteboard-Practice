function leftRotate(size, num) {
  var array = [];
  var temp

  for (var i = 1; i <= size; i++) {
    array.push(i);
  }

  temp = array.splice(0,num)

  var rotate_array = array.concat(temp)
  return rotate_array

}

console.log(leftRotate(5,2))
