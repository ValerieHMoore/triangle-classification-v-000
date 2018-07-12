require 'pry'

class Triangle
  attr_accessor :length1, :length2, :length3
  
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    # if triangle.class != Triangle 
    #   begin
    #     raise TriangleError
    #   rescue TriangleError => error
    #       puts error.message
    #   end
    if valid? == false
      raise TriangleError
    elsif (length1 == length2) && (length2 == length3)
      :equilateral
    elsif (length1 != length2) && (length2 == length3)
      :isosceles
    elsif (length2 != length3) && (length1 == length3)
      :isosceles
    elsif (length1 != length3) && (length1 == length2)
      :isosceles
    elsif (length1 != length2) && (length2 != length3) && (length1 != length3)
      :scalene
    end
  end
  
    def valid?
      if length1 > 0 && length2 > 0 && length3 > 0 &&
        (length1 + length2 > length3) ||
        (length2 + length3 > length1) ||
        (length1 + length3 > length2)
      end
    end
  
  # def true_triangle
  #   real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
  #   [a, b, c].each { |s| real_triangle << false if s <= 0 }
  #   raise TriangleError if real_triangle.include?(false)
  # end

class TriangleError < StandardError
    def self.message
    "Not a valid triangle!"
    end
  end

end