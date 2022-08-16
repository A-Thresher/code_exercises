print ">> What is the bill: $"
bill = gets.to_f
print ">> What is the tip percentage: %"
percentage = gets.to_f

tip = (bill * percentage * 0.01)
bill_final = bill + tip

puts "The tip is $#{'%.2f' % tip}"
puts "The total is $#{'%.2f' % bill_final}"
