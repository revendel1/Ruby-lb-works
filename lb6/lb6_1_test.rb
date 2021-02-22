# frozen_string_literal: true

require_relative 'lb6_1_main'
require 'minitest/autorun'

class TestClass < Minitest::Test
  def test_three
    number = 1e-3
    res = integral(number)
    assert_in_delta(0.3862943611199, res, 1e-6, 'Test of 10^(-3) failed. The result is wrong!')
  end

  def test_four
    number = 1e-4
    res = integral(number)
    assert_in_delta(0.3862943611199, res, 1e-7, 'Test of 10^(-4) failed. The result is wrong!')
  end

  def test_five
    number = 1e-5
    res = integral(number)
    assert_in_delta(0.3862943611199, res, 1e-8, 'Test of 10^(-5) failed. The result is wrong!')
  end
end
