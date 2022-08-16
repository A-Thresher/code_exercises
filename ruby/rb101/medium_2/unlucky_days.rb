=begin

Problem:
  Write a method that returns the number of friday the 13ths in a given year

  Input: Integer (year)
  Output: Integer (number of Fri 13)

  Rules:
    Year is greater than 1752 (Gregorian Calendar)

Examples:
  friday_13th(2015) == 3
  friday_13th(1986) == 1
  friday_13th(2019) == 2

Data:
  Time, integer

Algorithm
  - initialize counter
  - initialize new Time object on January 13th of the input year
    - check the 13th of each month for Friday
    - add 1 to counter if true
  - return counter

=end
def friday_13th(year)
  counter = 0

  (1..12).each do |month|
    thirteenth = Time.new(year, month, 13)
    counter += 1 if thirteenth.friday?
  end

  counter
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
