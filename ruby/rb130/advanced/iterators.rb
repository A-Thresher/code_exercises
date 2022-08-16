def factorial(num)
  return 1 if num == 0 || num == 1

  factorial = 1
  while num > 1
    factorial *= num
    num -= 1
  end
  factorial
end

enumerator = Enumerator.new do |enum|
  a = 0
  loop do
    enum << factorial(a)
    a += 1
  end
end

7.times { |num| puts "#{num}! == #{enumerator.next}" }

3.times { |num| puts "#{num}! == #{enumerator.next}" }

enumerator.rewind

7.times { |num| puts "#{num}! == #{enumerator.next}" }
