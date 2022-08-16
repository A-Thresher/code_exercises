class Series
  def initialize(str)
    @series = str
  end

  def slices(size)
    raise ArgumentError.new("invalid slice size") if size > @series.length

    @series.chars.map(&:to_i).each_cons(size).to_a
  end
end
