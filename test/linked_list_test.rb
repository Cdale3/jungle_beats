require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test

  def test_linked_list_exists
    list = LinkedList.new
    assert_equal nil, list.head
    binding.pry

  end

  # def test_is_it_nil
  #   list = LinkedList.new
  #   assert_equal nil, list.head
  #   binding.pry
  #
  # end

  def test_does_it_append
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop",list.head.data
    binding.pry

  end

  def test_next_node
    list = LinkedList.new
    assert_equal nil, list.next_node
    binding.pry
  end

  def test_can_it_count
    list = LinkedList.new
    list.count
    assert_equal nil, list.next_node
    binding.pry
  end

  def can_it_translate
    list = LinkedList.new
    list.to_string
    assert_equal nil, list.next_node
    binding.pry
  end

end
