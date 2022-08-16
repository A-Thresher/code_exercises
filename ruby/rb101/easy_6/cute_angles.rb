=begin
get angle
set degree to integer value of float
multiply first decimals of float by 60, set integer value to minutes
multiply decimals of minutes by 60, set integer value to seconds
return string
=end

DEGREE = "\xC2\xB0"
MIN_PER_DEG = 60
SEC_PER_MIN = 60

def normalize_angle(angle)
  angle < 0 ? (angle += 360 until angle > 0) : (angle -= 360 until angle < 360)
  angle
end

def dms(angle)
  angle = normalize_angle(angle) unless (0.0..360.0).cover?(angle)
  degrees = angle.to_i
  minutes = (angle % 1) * MIN_PER_DEG
  seconds = (minutes % 1) * SEC_PER_MIN
  format("%%(#{degrees}#{DEGREE}%02d'%02d\")", minutes, seconds)
end

puts dms(30) # == %(30(deg)00'00")
puts dms(76.73) # == %(76(deg)43'48")
puts dms(254.6) # == %(254(deg)36'00")
puts dms(93.034773) # == %(93(deg)02'05")
puts dms(0) # == %(0(deg)00'00")
puts dms(360) # == %(360(deg)00'00") || dms(360) == %(0(deg)00'00")
puts dms(400) # == %(40(deg)00'00")
puts dms(-40) # == %(320(deg)00'00")
puts dms(-420) # == %(300(deg)00'00")
