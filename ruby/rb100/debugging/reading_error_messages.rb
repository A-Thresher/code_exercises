def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# find_first_nonzero_among(0, 0, 1, 0, 2, 0) # Method needs an array
# find_first_nonzero_among(1) # Calling each on an integer, again needs an array
