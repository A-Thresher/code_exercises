=begin
PROBLEM
- Display what year the user will retire in
- Display how many years are left to work
- input: current age and retirement age, current year
- output: retirement year, number of years in between
- Assumptions: positive integers only (no floats)

EXAMPLES
- current_age = 30, retirement_age = 70, current_year = 2016
  -> retirement_year = 2056, years_of_work = 40

DATA
- strings, integers

ALGO
  START
  Get users current_age, retirement_age,
  Set current_year to system year
  Calculate outputs
    set years_of_work = retirement_age - current_age
    set retirment_year = current_year + years_of_work
  Display outputs
  END

CODE
=end

def valid_number?(num)
  num > 0
end

def get_user_age
  loop do
    print("What is your age? ")
    current_age = gets.chomp.to_i

    return current_age if valid_number?(current_age)
    puts("That's not a valid number.")
  end
end

def get_retirement_age
  loop do
    print("At what age would you like to retire? ")
    retirement_age = gets.chomp.to_i

    return retirement_age if valid_number?(retirement_age)
    puts("That's not a valid number.")
  end
end

current_age = get_user_age
retirement_age = get_retirement_age
current_year = Time.now.year

years_of_work = retirement_age - current_age
retirement_year = current_year + years_of_work

puts("\nIt's #{current_year}. You will retire in #{retirement_year}")
puts("You have only #{years_of_work} years of work to go!")
