function binary_search(array, target) {
  var min = 0;
  var max = array.length-1;
  var mid;

  while(max >= min) {
    mid = Math.floor((min + max) / 2);
    if (target < array[mid]) {
      max = mid-1;
    } else if (target > array[mid]) {
      min = mid+1;
    } else {
      console.log(mid);
      return true
    }
  }
}

var array = [1,2,4,5,6,7];

binary_search(array,7);

