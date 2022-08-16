def palindromic_number?(integer)
  integer.to_s == integer.to_s.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true

# Integers with leading zeros are interpreted by Ruby as octal. Because of this
# they do not store the quantity of leading zeros so while a palindrome checking
# method could be developed for transformed octal numbers it would have an 'if
# the quantity of trailing zeros is sufficient' qualifier. For example, 0051500
# could be transformed to 51500, then the trailing zeros removed (if no
# trailing zeros you could return false at this point) and 515 would return
# true. However 0005150 would also return true.
