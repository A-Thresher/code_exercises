class SumOfMultiples
  def initialize(*args)
    @set = args
  end

  def self.to(num, set = [3, 5])
    (1...num).select { |int| set.any? { |value| int % value == 0 } }.sum
  end

  def to(num)
    self.class.to(num, @set)
  end
end
