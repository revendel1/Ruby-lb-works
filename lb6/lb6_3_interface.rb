# frozen_string_literal: true

require_relative 'lb6_3_main'
puts 'Введите значение левой границы интервала:'
a1 = gets.to_f
puts 'Введите значение правой границы интервала:'
b1 = gets.to_f
puts root(a1, b1) { |n| Math.sin(n / 2.0) + n**2 }
f1 = ->(n) { Math.atan(n) + n - 1 }
puts root(a1, b1, &f1)
