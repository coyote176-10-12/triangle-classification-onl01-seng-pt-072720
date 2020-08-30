class Triangle
  # write code here
end
  attr_accessor :a,:b, :c, :isosceles, :equilateral, :scalene
  class TriangleError < StandardError
  end
  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c
  end
  def kind
    if !(@a > 0 && @b >0 && @c >0 && @a+@b >@c && @a+@c >@b && @b+@c > @a)
      raise TriangleError
    elsif @a == @b && @b == @c
      :equilateral
    elsif @a == @b && @b != @c
      :isosceles
    elsif @b == @c
      :isosceles
    elsif @a == @c
      :isosceles
    else
      :scalene
    end
  end

  end









class Triangle
  
  attr_accessor :x, :y, :z,
  :equilateral, :isosceles, :scalene

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end
  

  def kind
     
    if x == 0 || y == 0 || z == 0
      raise TriangleError
     elsif x + y <= z || x + z <= y || y + z <= x
      raise TriangleError
    elsif x == y && y == z
      kind = :equilateral
    elsif x == y && x != z || y == z && y != x || x == z && x != y
      kind = :isosceles
    else
      kind = :scalene
    end
  end
end

class TriangleError < StandardError
end
  