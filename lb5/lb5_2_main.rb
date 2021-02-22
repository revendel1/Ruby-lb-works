# frozen_string_literal: true

def generate_line(number)
  charset = Array('a'..'z') #+ Array(' ')
  Array.new(number) { charset.sample }.join
end

def transform(num, array = [])
  0.upto(num - 1) do |j|
    count = 0
    temp = ''
    temp2 = ''
    array[j] += ' '
    0.upto(array[j].length - 1) do |k|
      if array[j][k] == ' '
        if count.zero?
          count = 1
        else
          count = 0
          temp2 += "#{temp} #{temp} "
          temp = ''
        end
      end
      temp += array[j][k] if count == 1
    end
    temp2.strip
    array[j] = "#{temp2.strip}."
  end
  # 0.upto(num-1) { |l| puts array[l] }
end
