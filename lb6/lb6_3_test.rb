# frozen_string_literal: true

require_relative 'lb6_3_main'
require 'minitest/autorun'

class Test < Minitest::Test
  def test_of_function_one
    a = -2
    b = 3
    result = root(a, b) { |n| n**2 + Math.sin(n / 2.0) }
    assert_equal(0.0, result, 'Test of first function failed. Equation roots are not similar.')
  end

  def test_of_function_two
    a = -2
    b = 3
    f1 = ->(n) { Math.atan(n) + n - 1 }
    result = root(a, b, &f1)
    assert_equal(0.5, result, 'Test of second function failed. Equation roots are not similar.')
  end
end
