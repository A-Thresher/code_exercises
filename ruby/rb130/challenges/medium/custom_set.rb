class CustomSet
  def initialize(initial_values = [])
    @values = initial_values.uniq
  end

  def add(value)
    values << value unless contains?(value)
    self
  end

  def empty?
    values.empty?
  end

  def contains?(value)
    values.include?(value)
  end

  def subset?(other_set)
    values.all? { |value| other_set.contains?(value) }
  end

  def disjoint?(other_set)
    values.none? { |value| other_set.contains?(value) }
  end

  def intersection(other_set)
    intersection = values.select { |value| other_set.contains?(value) }
    CustomSet.new(intersection)
  end

  def difference(other_set)
    difference = values.select { |value| !other_set.contains?(value) }
    CustomSet.new(difference)
  end

  def union(other_set)
    CustomSet.new(values | other_set.values)
  end

  def eql?(other_set)
    other_set.kind_of?(self.class) &&
    values.sort == other_set.values.sort
  end

  def ==(other_set)
    values.sort == other_set.values.sort
  end

  protected

  attr_reader :values
end
