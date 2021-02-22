# frozen_string_literal: true

class Integral
  include Enumerable

  def each
    n = 1
    loop do
      yield n
      n += 1
    end
  end
end

def integral(accuracy)
  integral_count = Integral.new
  num = integral_count.find { |i| (1.0 / (2 * i)) < accuracy }
  num -= 1
  h = ((2.0 - 1.0) / num)
  k1 = integral_count.take(num).map { |i| 1 + (i - 0.5) * h }
  l = k1.inject { |sum, x| sum + Math.log(x) }
  l * h
end
