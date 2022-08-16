=begin

Originally Prints:
  []
  nil
  nil
  nil

The elsif is missing its condition. It appears it should go into effect when
there is more than one element in array. Ruby takes the next line, the #map
command, to be the conditional. It evaluates as true, selecting the elsif
branch, which has nothing in it, returning nil.

=end

def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])
