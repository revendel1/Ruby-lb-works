# frozen_string_literal: true

def convert(file_name_1, file_name_2, count)
  array = File.readlines(file_name_1)
  g = File.new(file_name_2, 'w')
  (count - 1).downto(0) do |i|
    str = "#{array[i].chomp.reverse}\n"
    g.write(str)
  end
  g.close
end
