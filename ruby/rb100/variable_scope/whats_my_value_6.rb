# Prints an error, a is not usable in my_value

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a
