# .map returns nil for unevaluated values. Use .filter_map post Ruby 2.7

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.filter_map do |n|
  n if n.even?
end

p even_numbers
