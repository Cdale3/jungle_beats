require 'minitest/autorun'
require 'minitest/pride'
require "./lib/node"
require 'pry'

class NodeTest < Minitest::Test
  attr_reader :node
  def setup
    @node = Node.new("plop")
  end

  def test_node_exists
    assert_instance_of Node, node
  end

  def test_data_can_hold_data
    assert_equal "plop", node.data
  end

  def test_next_node_is_nil
    assert_equal nil, node.next_node
  end

  def test_it_keeps_its_own_count
    assert_equal 1, node.count
  end

  def test_sums_count_of_next_node
    node1 = Node.new("plop1")
    node2 = Node.new("plop2")

    node.next_node
    node.next_node = node1
    node1.next_node = node2

    assert_equal 3, node.count
  end
end
  # ===node, node1, node2 ===
  # === 1 + , 1 +, 1  === #=> 3
  #if next node is nil return just 1
