# frozen_string_literal: true

require_relative 'lb6_2_main'

puts 'Введите требуемую точность:'
num1 = gets
num = num1.to_f
puts integral(num)
