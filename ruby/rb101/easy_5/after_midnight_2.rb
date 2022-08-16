require 'time'

MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = 1440
HOURS_IN_DAY = 24

def after_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  hours == HOURS_IN_DAY ? 0 : minutes + hours * MINUTES_IN_HOUR
end

def before_midnight(time)
  minutes = after_midnight(time)
  minutes == 0 ? 0: MINUTES_IN_DAY - minutes
end

def after_midnight2(time)
  time = Time.strptime(time, '%H:%M')
  time.min + time.hour * MINUTES_IN_HOUR
end

def before_midnight2(time)
  minutes = after_midnight(time)
  minutes == 0 ? 0: MINUTES_IN_DAY - minutes
end

puts after_midnight2('00:00') == 0
puts before_midnight2('00:00') == 0
puts after_midnight2('12:34') == 754
puts before_midnight2('12:34') == 686
puts after_midnight2('24:00') == 0
puts before_midnight2('24:00') == 0
