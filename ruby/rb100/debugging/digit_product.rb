def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  # product = 0 <- Anything multiplied by zero is zero, initialize with 1
  product = 1

  digits.each do |digit|
    product *= digit # Anything multiplied by zero is zero
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0
