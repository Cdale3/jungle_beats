require 'minitest/autorun'
require 'minitest/pride'
require_relative "node"

class LinkedList

  attr_reader :head

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    if @head
      @head.append(data)
    else
      @head = Node.new(data)
    end
    data
  end

  def count
    if @head
      @head.count
    else
      0
    end
  end

  def next_node

  end

  def talk

  end

end
