def palindrome_string?(string)
  string == string.reverse
end

def palindrome_array?(array)
  array == array.reverse
end

def palindrome?(input)
  input == input.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

puts palindrome?([1, 2, 3, 4]) == false
puts palindrome?(%w(test array for palindrome)) == false
puts palindrome?(%w(true test array test true)) == true
puts palindrome?([1, 'red', 'red', 1]) == true
