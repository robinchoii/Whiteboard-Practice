class Node
  attr_accessor :val, :left_child, :right_child
  def initialize(val)
    @value = val
    @left_child = nil
    @right_child = nil
  end
end

class BinarySearchTree
  attr_accessor :root

  def initialize
    @root = nil
    @size = 0
  end

  def insert(val)
    # if less, falls to the left_child
    # if greater, falls to the right_child
    if @root == nil
      @root = Node.new(val)
      @size += 1
    else
      def find_and_insert(current_node, val)
        if val > current_node.val
          if current_node.right_child == nil
            current_node.right_child = Node.new(val)
          else
            find_and_insert(current_node.right_child, val)
          end
        elsif val < current_node.val
          if current_node.left_child == nil
            current_node.left_child = Node.new(val)
          else
            find_and_insert(current_node.left_child, val)
          end
        end
      end
    end
  end
end

node = Node.new(20)

bst = BinarySearchTree.new()
bst.insert(node)
p bst

