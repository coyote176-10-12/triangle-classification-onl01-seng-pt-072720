class Triangle

  attr_accessor :x,:y, :z, :isosceles, :equilateral, :scalene
  class TriangleError < StandardError
  end
  def initialize(a,b,c)
    @x=x
    @y=y
    @z=z
  end
  def kind
if !(@x > 0 && @y >0 && @z >0 && @x+@y >@z && @x+@z >@y && @y+@z > @x)
      raise TriangleError
    elsif @x == @y && @y == @z
      :equilateral
    elsif @x == @y && @y != @z
      :isosceles
    elsif @y == @z
      :isosceles
    elsif @x == @z
      :isosceles
    else
      :scalene
    end
  end

  end









