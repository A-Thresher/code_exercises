daylight = [true, false].sample

def time_of_day?(a)
  puts a ? "It's daytime!" : "It's nightime!"
end

time_of_day?(daylight)
