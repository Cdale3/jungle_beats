require 'minitest/autorun'
require 'minitest/pride'
require_relative "node"

class LinkedList

  attr_reader :head

  def initialize
    @head = nil
    @count = 0
    # @current = 0
  end

  def append(data)
    @head = Node.new(data)

    data
  end

  def count
    @count += 1
  end

  def next_node

  end

  def talk

  end

end
