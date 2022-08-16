def multiply(a, b)
  a * b
end

def square(number)
  multiply(number, number)
end

puts square(5)
puts square(-8)

def power(number, power)
  multiple = 1
  until power == 0
    multiple = multiply(multiple, number)
    power -= 1
  end
  multiple
end

puts power(5, 2)
puts power(3, 4)
