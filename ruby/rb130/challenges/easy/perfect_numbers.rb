class PerfectNumber
  def self.classify(num)
    raise StandardError('invalid number') if num < 0

    aliquot_sum = divisors(num).sum

    case num <=> aliquot_sum
    when -1 then  'abundant'
    when 0  then  'perfect'
    when 1  then  'deficient'
    end
  end

  class << self
    private

    def divisors(num)
      output_arr = []
      1.upto(num - 1) do |value|
        output_arr << value if num % value == 0
      end
      output_arr
    end
  end
end
