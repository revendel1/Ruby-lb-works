# frozen_string_literal: true

class Triangle
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1.to_f
    @side2 = side2.to_f
    @side3 = side3.to_f
  end

  def area(side1, side2, side3)
    p = (side1 + side2 + side3) / 2.0
    Math.sqrt(p * (p - side1) * (p - side2) * (p - side3))
  end

  def out
    puts @side1, @side2, @side3
  end

  def print1
    @side1
  end

  def print2
    @side2
  end

  def print3
    @side3
  end
end

class Square < Triangle
  attr_reader :side4, :diagonal

  def initialize(side1, side2, side3, side4, diagonal)
    super(side1, side2, side3)
    @side4 = side4
    @diagonal = diagonal
  end

  def area(side1, side2, side3, side4, diagonal)
    super(side1, side2, diagonal) + super(side3, side4, diagonal)
  end

  def out
    super
    puts @side4
    puts @diagonal
  end

  def print4
    @side4
  end

  def print_d
    @diagonal
  end
end
