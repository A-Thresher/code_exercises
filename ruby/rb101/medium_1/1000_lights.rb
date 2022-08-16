=begin

Problem:
  Given n number of switches, you go through n rounds. Each round, you flip the
  switches that are multiples of n. What switches are 'on' at the end?

  Input: Integer
  Output: Array

  Rules:
  - all switches are initially off

Examples:
  Example with n = 5 lights:
    round 1: every light is turned on
    ound 2: lights 2 and 4 are now off; 1, 3, 5 are on
    round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
    round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
    round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
    The result is that 2 lights are left on, lights 1 and 4.
    The return value is [1, 4].

  With 10 lights, 3 lights are left on: lights 1, 4, and 9.
  The return value is [1, 4, 9].

Data:
  Integer, array, boolean

Algorithm:
  - Generate an array of false booleans the length of the input integer
  - Initialize an array for on switches
  - iterate from 1 to the length of the input integer
    - flip the booleans at indices that +1 are a multiple of the current
      iteration
      - iterate through the switch array checking each index
  - push the index + 1 to the on_switches array for each true boolean
  - return the on switches array

=end

def lights(num)
  switches = Array.new(num, false)
  on_switches = []
  (1..num).each do |i|
    switches.map!.with_index do |bool, index|
      (index + 1) % i == 0 ? bool = !bool : bool
    end
  end
  switches.each_with_index { |bool, index| on_switches << (index + 1) if bool }
  on_switches
end

p lights(5)
p lights(10)
p lights(1000)
