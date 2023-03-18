class Triangle
  # write code here
  attr_reader :s_one, :s_two, :s_three

  def initialize(s_one, s_two, s_three)
    @s_one = s_one
    @s_two = s_two
    @s_three = s_three
  end

  def is_valid
    if self.s_one > 0 && self.s_two > 0 && self.s_three > 0
      if self.s_one + self.s_two > self.s_three && self.s_three + self.s_two > self.s_one && self.s_one + self.s_three > self.s_two
        return true
      else
        return false
    end
  end

  def kind
    if is_valid
      if self.s_one == self.s_two && self.s_one == self.s_three
        return "equilateral"
      elsif self.s_one === self.s_two || self.s_one == self.s_three || self.s_two == self.s_three
        return "isosceles"
      else
        return "scalene"
      end
    else
      raise TriangleError
  end
  class TriangleError < StandardError
    # triangle error code
  end
end
