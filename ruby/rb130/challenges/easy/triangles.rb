=begin

Problem:
  Determine whether a given triangle is equilateral, isosceles or scalene.
  Driven by given test file

  Input: Triangle object, given 3 integers (side lengths)
  Output: string (triangle type)

  Rules:
    equilateral: all three sides equal
    isosceles: two sides equal
    scalene: no equal sides
    For a shape to be a triangle:
      all sides length > 0
      sum of any two sides must be greater than the third

Examples:
  2, 2, 2 -> equilateral

Data:
  Triangle object initialized with side lengths

Algorithm:
o initialize
  - Initialize instance variable sides as array of side length
  - check sides make triangle (triangle?)
    - raise error if false

o kind
  - return the string 'equilateral' if all three sides are equal
  - return the string 'isosceles' if two sides are equal
  - return the string 'scalene' if no sides are equal

o triangle?
  - if all sides greater than 0 and any two sides are larger than the third
    return true

=end


class Triangle
  attr_reader :sides

  def initialize(s1, s2, s3)
    @sides = [s1, s2, s3]
    raise ArgumentError.new('Invalid side lengths') unless triangle?
  end

  def kind
    case @sides.uniq.size
    when 1 then 'equilateral'
    when 2 then 'isosceles'
    when 3 then 'scalene'
    end
  end

  def triangle?
    @sides.all? do |side|
      side > 0 &&
      (@sides.sum - side) > side
    end
  end
end
