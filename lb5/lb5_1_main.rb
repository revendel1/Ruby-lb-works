# frozen_string_literal: true

def count_exp(num)
  x = num.to_f
  if x.zero?
    'Wrong number, because it equals 0'
  else
    (Math.log(x) + Math.sin(x / (x**3 - 5))**2)
  end
end
