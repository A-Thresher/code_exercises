def xor?(arg1, arg2)
  return true if (arg1 && !arg2) || (!arg1 && arg2)
  false
end

puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?)
