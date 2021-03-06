var Stack = function() {
  this.top = null;
  this.size = 0;
};

var Node = function(data) {
  this.data = data;
  this.previous = null;
}

Stack.prototype.push = function(data) {
  var node = new Node(data);

  node.previous = this.top;
  this.top = node;
  this.size += 1;
  return this.top;
}

Stack.prototype.pop = function(data) {
  var temp = this.top;
  this.top = this.top.previous;
  this.size -= 1;
  return temp
}

Stack.prototype.isEmpty = function() {
  return this.top == null;
}

Stack.prototype.min = function() {

}
