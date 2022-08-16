# Exercise 1
# class Tree
#   include Enumerable

#   def each
#     # implementation
#   end
# end


# Exercise 2
# def compute
#   block_given? ? yield : 'Does not compute.'
# end

# p compute { 5 + 3 } == 8
# p compute { 'a' + 'b' } == 'ab'
# p compute == 'Does not compute.'

# FE
# def compute(input)
#   block_given? ? yield(input) : 'Does not compute.'
# end

# p compute('test') { |input| input } == 'test'
# p compute([1,2,3]) { |input| input.map(&:to_s) } == ['1', '2', '3']
# p compute(10) == 'Does not compute.'


# Exercise 3
# def missing(arr)
#   missing_nums = (arr[0]..arr[-1]).to_a
#   arr.each { |num| missing_nums.delete(num) }
#   missing_nums
# end

# p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
# p missing([1, 2, 3, 4]) == []
# p missing([1, 5]) == [2, 3, 4]
# p missing([6]) == []


# Exercise 4
# def divisors(input)
#   (1..input).to_a.select { |num| input % num == 0 }
# end

# p divisors(1) == [1]
# p divisors(7) == [1, 7]
# p divisors(12) == [1, 2, 3, 4, 6, 12]
# p divisors(98) == [1, 2, 7, 14, 49, 98]
# p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute


# Exercise 5
# def rot13(str)
#   output = []
#   str.each_char do |char|
#     rot13 = char.downcase
#                 .tr('abcdefghijklmnopqrstuvwxyz', 'nopqrstuvwxyzabcdefghijklm')
#     rot13.upcase! if char == char.upcase
#     output << rot13
#   end

#   output.join
# end

# names = ['Nqn Ybirynpr',
#   'Tenpr Ubccre',
#   'Nqryr Tbyqfgvar',
#   'Nyna Ghevat',
#   'Puneyrf Onoontr',
#   'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
#   'Wbua Ngnanfbss',
#   'Ybvf Unvog',
#   'Pynhqr Funaaba',
#   'Fgrir Wbof',
#   'Ovyy Tngrf',
#   'Gvz Orearef-Yrr',
#   'Fgrir Jbmavnx',
#   'Xbaenq Mhfr',
#   'Fve Nagbal Ubner',
#   'Zneiva Zvafxl',
#   'Lhxvuveb Zngfhzbgb',
#   'Unllvz Fybavzfxv',
#   'Tregehqr Oynapu']

# names.each { |name| puts rot13(name) }


# Exercise 6
# def any?(array)
#   array.each { |num| return true if yield(num) }
#   false
# end

# p any?([1, 3, 5, 6]) { |value| value.even? } == true
# p any?([1, 3, 5, 7]) { |value| value.even? } == false
# p any?([2, 4, 6, 8]) { |value| value.odd? } == false
# p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
# p any?([1, 3, 5, 7]) { |value| true } == true
# p any?([1, 3, 5, 7]) { |value| false } == false
# p any?([]) { |value| true } == false


# Exercise 7
# def all?(array)
#   array.each { |num| return false unless yield(num) }
#   true
# end

# p all?([1, 3, 5, 6]) { |value| value.odd? } == false
# p all?([1, 3, 5, 7]) { |value| value.odd? } == true
# p all?([2, 4, 6, 8]) { |value| value.even? } == true
# p all?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
# p all?([1, 3, 5, 7]) { |value| true } == true
# p all?([1, 3, 5, 7]) { |value| false } == false
# p all?([]) { |value| false } == true


# Exercise 8
# def none?(array)
#   array.each { |num| return false if yield(num) }
#   true
# end

# p none?([1, 3, 5, 6]) { |value| value.even? } == false
# p none?([1, 3, 5, 7]) { |value| value.even? } == true
# p none?([2, 4, 6, 8]) { |value| value.odd? } == true
# p none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
# p none?([1, 3, 5, 7]) { |value| true } == false
# p none?([1, 3, 5, 7]) { |value| false } == true
# p none?([]) { |value| true } == true


# Exercise 9
# def one?(array)
#   dup = false

#   array.each do |num|
#     return false if dup && yield(num)
#     dup = true if yield(num)
#   end

#   dup
# end

# p one?([1, 3, 5, 6]) { |value| value.even? }    == true
# p one?([1, 3, 5, 7]) { |value| value.odd? }     == false
# p one?([2, 4, 6, 8]) { |value| value.even? }    == false
# p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
# p one?([1, 3, 5, 7]) { |value| true }           == false
# p one?([1, 3, 5, 7]) { |value| false }          == false
# p one?([]) { |value| true }                     == false


# Exercise 10
def count(array)
  array.inject(0) { |count, num| count += 1 if yield(num); count }
end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2
