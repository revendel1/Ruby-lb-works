# frozen_string_literal: true

def root(left, right)
  c = (yield left).abs
  min = left
  left *= 10
  right *= 10
  while left < right
    if yield (left / 10.0).abs < c
      c = yield (left / 10.0).abs
      min = left / 10.0
    end
    left += 1
  end
  min
end
