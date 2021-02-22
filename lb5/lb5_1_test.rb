# frozen_string_literal: true

require_relative 'lb5_1_main'
require 'minitest/autorun'

class Test < Minitest::Test
  def test_of_zero
    number = 0
    result = count_exp(number)
    assert_equal('Wrong number, because it equals 0', result, 'Test of zero failed. The entered number is incorrect')
  end

  def test_of_one
    number = 1
    result = count_exp(number)
    assert_in_delta(0.06120871905481365, result, 1e-4, 'Test of one failed. The result is wrong')
  end

  def test_of_ten
    number = 10
    result = count_exp(number)
    assert_in_delta(2.3026860971435643, result, 1e-4, 'Test of ten failed. The result is wrong')
  end

  def test_of_twenty
    number = 20
    result = count_exp(number)
    assert_in_delta(2.9957385313607676, result, 1e-4, 'Test of twenty failed. The result is wrong')
  end
end
