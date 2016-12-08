class Node
  attr_reader :data
  attr_accessor :next_node
  def initialize(data)
    @data = data
    @next_node = nil
  end

  def count
    if tail?
      1
    else
      1 + next_node.count
    end
  end

  def append
    if something
      #something else
    else
      #somethign else
    end
  end

  def tail?
    next_node == nil
  end
end
