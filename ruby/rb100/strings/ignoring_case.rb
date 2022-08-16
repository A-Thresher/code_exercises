name = 'Roger'

# Original
# puts name.downcase == 'RoGeR'.downcase
# puts name.downcase == 'DAVE'.downcase

#.casecmp based
puts name.casecmp?('RoGeR')
puts name.casecmp?('DAVE')
