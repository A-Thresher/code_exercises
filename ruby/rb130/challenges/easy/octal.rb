class Octal
  def initialize(str_num)
    @octal = str_num
  end

  def to_decimal
    return 0 unless @octal.match?(/\A[0-7]*\z/)

    sum = 0
    @octal.to_i.digits.each_with_index do |digit, idx|
      sum += (digit * (8 ** idx))
    end
    sum
  end
end
