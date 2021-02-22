# frozen_string_literal: true

require_relative 'lb7_1_main'

puts 'Введите количество строк:'
num1 = gets
num = num1.to_i
puts 'Введите названия файлов:'
str1 = "#{gets.chomp}.txt"
str2 = "#{gets.chomp}.txt"
f = File.new(str1, 'w')
puts 'Введите сами строки:'
1.upto(num) do
  str = gets
  f.write(str)
end
f.close
convert(str1, str2, num)
