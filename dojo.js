// 1
function print1to255() {
  for(var i=1; i < 256; i++) {
    console.log(i);
  }
};

// 2
function printodd() {
  for(var i=1; i <= 255; i++) {
    if (i % 2 !== 0) {
      console.log(i);
    };
  };
};

// 3
function printIntsAndSum0To255() {
  var sum = 0 //make a variable sum to keep track of the sum
  for (var i=0; i < 256; i++) { //make a for loop to print integers 0 to 255
    sum += i //update the sum after each loop
    console.log(i, sum) //print the number and the sum
  }
}
// printIntsAndSum0To255(); //calling the function

// 4
var arr = [1,2,3,4,5]
function printArrayVals(arr) {
  for (var i=0; i<arr.length; i++) {
    console.log(arr[i])
  }
}

// 12
var arr = [1,2,3,4,5]
function shiftArrayValsLeft(arr) {
  for (var i=0;i<arr.length-1;i++){
    arr[i] = arr[i+1]
    arr[arr.length-1] = 0
  }
  return arr
}

// 13
var arr = [1,2,3,4,5,-1,-2] // create an array with positive and negative numbers, (problem says given an array, indication that your function has an array(also called the argument) inside the parameters)
function dojo(arr) {
  for(var i=0; i<arr.length; i++ ) {
    if(arr[i] < 0) {
      arr[i] = "Dojo"
    }
  }
  return arr
}
