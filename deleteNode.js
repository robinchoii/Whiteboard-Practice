// Delete a node from a singly-linked list ↴ , given only a variable pointing to that node

function Node(value) {
  this.value = value;
  this.next = null;
}

function deleteNode(nodeToDelete) {
  var nextNode = nodeToDelete.next

  if (nextNode) {
    nodeToDelete.value = nextNode.value;
    nodeToDelete.next = nextNode.next;
  } else {
    throw new Error("node does not exist");
  }

}

var a = new Node('a');
var b = new Node('b');
var c = new Node('c');

a.next = b
b.next = c

console.log(a)
console.log(b)
deleteNode(b)
console.log(a)


