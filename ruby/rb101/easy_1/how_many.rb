def count_occurrences(array)
  counts = {}
  iterator = 0

  while iterator < array.size

    if counts[array[iterator].downcase]
      counts[array[iterator].downcase] += 1
    else
      counts[array[iterator].downcase] = 1
    end

    iterator += 1
  end

  counts.each { |key, value| puts "#{key} => #{value}" }

end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

count_occurrences(vehicles)
