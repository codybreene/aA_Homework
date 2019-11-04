require "byebug"
require "set"

class GraphNode

    attr_accessor :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end

end

def bfs(starting_node, target_value)
    queue = [starting_node]
    visited = Set.new()
    while !queue.empty?
        # debugger
        check = queue.pop
        visited.add(check)
        return check if check.value == target_value
        check.neighbors.each do |i|
            queue.unshift(i) unless visited.include?(i)
        end
    end
    puts "didn't find it :("
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
g = GraphNode.new('g')
a.neighbors = [b, c, e]
b.neighbors = [g]
c.neighbors = [b, d]
e.neighbors = [a, g]
f.neighbors = [e]
g.neighbors = [a,c,e]

# puts a.value
# puts a.neighbors[1].value
# puts bfs(a, "b")
print bfs(g, "e")
print bfs(a, "d")