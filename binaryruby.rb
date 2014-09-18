class Node

  attr_accessor :name, :children

  def initialize(name, children = [ ])
    @name = name
    @children = children
  end

  def traverse(&block)
    yield self
    @children.each { |child| child.traverse(&block) }
  end

end

z = Node.new("z")
d = Node.new("d", [f] )
b = Node.new("b", [d,z])
c = Node.new("c")
parent = Node.new("a", [b, c])

str = ''
parent.traverse { |node| str += node.name }
puts str
