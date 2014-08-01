require 'shape'

# This is an Octagon
class Octagon < Shape
  attr_reader :side_length

  def length(length)
    length
  end

  def perimeter(side)
    side * 8
  end

  def area(side)
    2 * (1 + Math.sqrt(2)) * side**2
  end
end
