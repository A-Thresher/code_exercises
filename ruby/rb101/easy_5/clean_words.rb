ALPHABET = ('a'..'z').to_a

def cleanup(string)
  string.gsub(/\W/, ' ').gsub(/ {2,}/, ' ')
end

def cleanup2(string)
  new_string = ''
  string.each_char do |char|
    ALPHABET.include?(char) ? new_string << char : new_string << ' '
  end
  new_string.squeeze(' ')
end

puts cleanup2("---what's my +*& line?") == ' what s my line '
