# frozen_string_literal: true

require_relative 'lb7_2_main'

puts 'Введите стороны треугольника: '
side1 = gets.to_f
side2 = gets.to_f
side3 = gets.to_f
triangle = Triangle.new(side1, side2, side3)
puts "Вывод через \"puts\": #{side1}, #{side2}, #{side3}"
puts 'Вывод через метод:'
triangle.out
puts "Вывод через геттеры: #{triangle.side1}, #{triangle.side2}, #{triangle.side3}"
puts "Площадь треугольника равна: #{triangle.area(side1, side2, side3)}"

puts 'Введите стороны четырехугольника: '
side11 = gets.to_f
side21 = gets.to_f
side31 = gets.to_f
side41 = gets.to_f
puts 'Введите длину диагонали:'
diagonal1 = gets.to_f
square = Square.new(side11, side21, side31, side41, diagonal1)
puts "Вывод через \"puts\": #{side11}, #{side21}, #{side31}, #{side41}, #{diagonal1}"
puts 'Вывод через метод:'
square.out
puts "Вывод через геттеры: #{square.side1}, #{square.side2}, #{square.side3}, #{square.side4}, #{square.diagonal}"
puts "Площадь четырёхугольника равна: #{square.area(side11, side21, side31, side41, diagonal1)}"
