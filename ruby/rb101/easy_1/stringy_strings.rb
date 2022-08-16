def stringy(int, a=1)
  string = ''
  if a == 1
    int.times do |iter| 
      iter.even? ? string << '1' : string << '0'
    end
  else
    int.times do |iter| 
      iter.even? ? string << '0' : string << '1'
    end
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'
