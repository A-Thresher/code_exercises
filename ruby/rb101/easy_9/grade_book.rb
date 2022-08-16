=begin

Problem:
  Write a method that determines the mean of three integer scores passed to it
  and returns the letter value associated with that grade

  Input: Integers
  Output: String

  Rules:
    - the integers will be between 0 and 100

Examples:
  get_grade(95, 90, 93) == "A"
  get_grade(50, 50, 95) == "D"

Data:
  Integers, String

Algorithm:
  - Calculate average score (sum of scores / number of scores)
  - Compare score to letter grade ranges to get the grade string
    - case statement
  - return grade string

=end

def get_grade(score1, score2, score3)
  score_avg = (score1 + score2 + score3) / 3

  case score_avg
  when 90..100 then 'A'
  when 80...90 then 'B'
  when 70...80 then 'C'
  when 60...70 then 'D'
  else              'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
