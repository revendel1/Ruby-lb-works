# frozen_string_literal: true

require_relative 'lb7_2_main'
require 'minitest/autorun'

class TestFunction < Minitest::Test
  def test_triangle
    side1 = 10
    side2 = 10
    side3 = 10
    triangle = Triangle.new(side1, side2, side3)
    assert_equal(triangle.print1, side1, 'Test one_1 failed. Not equal.')
    assert_equal(triangle.print1, side2, 'Test one_2 failed. Not equal.')
    assert_equal(triangle.print1, side3, 'Test one_3 failed. Not equal.')
    assert_in_delta(43.301, triangle.area(side1, side2, side3), 1e-3, 'Test one_4 failed. The result is wrong')
  end

  def test_figure4
    side1 = 2
    side2 = 5
    side3 = 2
    side4 = 5
    diagonal = 5.386
    figure = Square.new(side1, side2, side3, side4, diagonal)
    assert_equal(figure.print1, side1, 'Test two_1 failed. Not equal.')
    assert_equal(figure.print2, side2, 'Test two_2 failed. Not equal.')
    assert_equal(figure.print3, side3, 'Test two_3 failed. Not equal.')
    assert_equal(figure.print4, side4, 'Test two_4 failed. Not equal.')
    assert_equal(figure.print_d, diagonal, 'Test two_5 failed. Not equal.')
    assert_in_delta(10, figure.area(side1, side2, side3, side4, diagonal), 1e-2,
                    'Test two_6 failed. The result is wrong')
    assert_equal(figure.superclass, 'Triangle', 'Test two_7 failed. Not equal.')
  end
end
