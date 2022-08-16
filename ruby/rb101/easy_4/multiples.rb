def multisum(number)
  values = []
  (1..number).each { |num| values << num if num % 3 == 0 || num % 5 == 0 }
  values.sum
end

def multisum2(number)
  (1..number).inject(0) { |sum, n| n % 3 == 0 || n % 5 == 0 ? (sum + n) : sum }
end

puts multisum2(3) == 3
puts multisum2(5) == 8
puts multisum2(10) == 33
puts multisum2(1000) == 234168
