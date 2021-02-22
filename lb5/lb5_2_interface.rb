# frozen_string_literal: true

require_relative 'lb5_2_main'

puts 'Введите количество строк'
num = gets.to_i
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
puts ''
puts 'Исходная последовательность строк:'
0.upto(num - 1) { |m| puts "#{arr[m]}." }
transform(num, arr)
puts ''
puts 'Преобразованная последовательность строк:'
0.upto(num - 1) { |l| puts arr[l] }
