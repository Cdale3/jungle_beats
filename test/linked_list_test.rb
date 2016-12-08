require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test

  def test_linked_list_exists
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_is_it_nil
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_does_it_append
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop",list.head.data
  end

  def test_it_appends_multiple_data
binding.pry
    list = LinkedList.new
    list.append("pood")
    list.append("food")
    assert_equal "pood", list.head.data
    assert_equal "food", list.head.next_node.data
  end

  # === ===
  # append "pood"
  # === pood ===
  # append "food"
  # === pood, food ===
  # append "polp"
  # === pood, food, polp ===



  def test_next_node
    list = LinkedList.new
    assert_equal nil, list.next_node
  end

  def test_can_it_count
    list = LinkedList.new
    expected_count = 3

    expected_count.times do
      list.append("doop")
    end

    assert_equal expected_count, list.count
  end

  def can_it_translate
    list = LinkedList.new
    list.to_string
    assert_equal nil, list.next_node
  end
end
