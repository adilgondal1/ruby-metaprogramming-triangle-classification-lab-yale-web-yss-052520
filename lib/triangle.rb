class Triangle
  # triangle code

  attr_accessor :s1 , :s2 , :s3

  def initialize(s1,s2,s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    triangleCheck
    if s1 == s2 and s2 == s3 
      :equilateral
    elsif s1 == s2 or s1 == s3 or s2 == s3
      :isosceles
    else
      :scalene
    end
  end

  def triangleCheck
    if (s1 + s2 <= s3) or (s1 + s3 <= s2) or (s2 + s3 <= s1) or (s1*s2*s2 <= 0)
      raise TriangleError
    end

  end
 
  class TriangleError < StandardError
    # triangle error code
  end
end