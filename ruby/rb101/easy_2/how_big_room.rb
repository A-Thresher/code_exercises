SQMETERS_TO_SQFEET = 10.7639
SQFEET_TO_SQINCH = 144
SQFEET_TO_SQCM = 929.03

# puts ">> Please enter the length and width of the room (meters)."
# puts ">> Length:"
# length_m = gets.to_f
# puts ">> Width:"
# width_m = gets.to_f

# area_m2 = length_m * width_m

# puts "The area of the room is #{area_m2.round(1)} square meters " + \
#      "(#{(area_m2 * SQMETERS_TO_SQFEET).round(2)} square feet)."


puts ">> Please enter the length and width of the room (feet)."
puts ">> Length:"
length_ft = gets.to_f
puts ">> Width:"
width_ft = gets.to_f

area_ft2 = length_ft * width_ft

puts "The area of the room is #{area_ft2.round(1)} square feet, " + \
     "#{(area_ft2 * SQFEET_TO_SQINCH).round(2)} square inches, " + \
     "and #{(area_ft2 * SQFEET_TO_SQCM).round(2)} square centimeters."
