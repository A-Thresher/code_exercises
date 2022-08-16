=begin


Algorithm:
  - initialize parentheses counts
  - iterate through the string characters
    - if the current char is a parentheses, add it to the appropriate count
    - if the number of ending parentheses is larger than the number of starting,
      break and return false
  - if the number of parentheses are equal, return true, else false

=end

def balanced?(string)
  start_count = 0
  end_count = 0
  quotes = 0

  string.each_char do |char|
    case char
    when /[(\[{]/ then start_count += 1
    when /[)\]}]/ then end_count += 1
    when /["]/    then quotes += 1
    end

    break if end_count > start_count
  end

  start_count == end_count && quotes.even? ? true : false
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
