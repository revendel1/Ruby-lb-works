# frozen_string_literal: true

def integral(accuracy)
  n = 1
  sum = 0
  n += 1 while (1.0 / (2 * n)) > accuracy
  puts "Количество итераций: #{n}"
  h = ((2.0 - 1.0) / n)
  1.upto(n) do |i|
    x = 1 + (i - 0.5) * h
    sum += Math.log(x)
  end
  sum * h
end
