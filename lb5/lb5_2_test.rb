# frozen_string_literal: true

require_relative 'lb5_2_main'
require 'minitest/autorun'

class Test < Minitest::Test
  def test_of_two_string
    num = 2
    arr = []
    1.upto(num) do
      size = rand(80..100).to_i
      a = generate_line(size)
      count = rand(0..2).to_i
      count *= 2
      count += 1
      1.upto(count) do
        q = rand(1..size).to_i
        a[q] = ' '
      end
      a.split
      arr.push a
    end
    transform(num, arr)
    assert(arr != [], msg = nil)
  end

  def test_of_three_string
    num = 3
    arr = []
    1.upto(num) do
      size = rand(80..100).to_i
      a = generate_line(size)
      count = rand(0..2).to_i
      count *= 2
      count += 1
      1.upto(count) do
        q = rand(1..size).to_i
        a[q] = ' '
      end
      a.split
      arr.push a
    end
    transform(num, arr)
    assert(arr != [], msg = nil)
  end
end
