=begin
input: minutes
output: time (24 hr format)

get number
get remainder minutes in 24 hours (1440min/24hr)
divmod minute by 60
return string of "quotient:remainder"

=end

MINUTES_IN_DAY = 1440
MINUTES_IN_HOUR = 60
SECONDS_IN_MINUTE = 60

def time_of_day(minutes)
  hour, minute = (minutes % MINUTES_IN_DAY).divmod(MINUTES_IN_HOUR)
  format('%02d:%02d', hour, minute)
end

def time_of_day2(minutes)
  (Time.new(2021, 4, 18) + (minutes * SECONDS_IN_MINUTE)).strftime('%A %H:%M')
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

puts time_of_day2(-4231) == "Thursday 01:29"
