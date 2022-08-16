=begin

PROBLEM:
  Write a method that implements a miniature stack-and-register-based
  programming language with the following commands:
    n Place a value n in the "register". Do not modify the stack.
    PUSH Push the register value on to the stack. Leave the value in the
      register.
    ADD Pops a value from the stack and adds it to the register value, storing
      the result in the register.
    SUB Pops a value from the stack and subtracts it from the register value,
      storing the result in the register.
    MULT Pops a value from the stack and multiplies it by the register value,
      storing the result in the register.
    DIV Pops a value from the stack and divides it into the register value,
      storing the integer result in the register.
    MOD Pops a value from the stack and divides it into the register value,
      storing the integer remainder of the division in the register.
    POP Remove the topmost item from the stack and place in register
    PRINT Print the register value

  Input = string
  Output = PRINT results (Integer)

  Rules:
  - All operation are integer operations
  - Assume all 'programs' are correct
  - initialize register = 0

Examples:
  minilang('PRINT')
  # 0

  minilang('5 PUSH 3 MULT PRINT')
  # 15

  minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
  # 5
  # 3
  # 8

  minilang('5 PUSH POP PRINT')
  # 5

  minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
  # 5
  # 10
  # 4
  # 7

  minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
  # 6

  minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
  # 12

  minilang('-3 PUSH 5 SUB PRINT')
  # 8

  minilang('6 PUSH')
  # (nothing printed; no PRINT commands)

Data:
  Array, Integer, String

Algorithm:
  - initialize register value
  - initialize the stack array
  - split input program into an array
  - iterate through the input program
    - if the current element is an integer, reassign the register value to it
    - if the current element is a string, perform the defined operation

=end

def minilang(program)
  register = 0
  stack = []
  commands = %w(PUSH ADD SUB MULT DIV MOD POP PRINT)

  program.split.each do |step|
    register = step.to_i if step.to_i.to_s == step

    if !commands.include?(step) && step.to_i.to_s != step
      puts "Invalid command: #{step}"
      puts "Current Values -> Register: #{register} Stack: #{stack}"
      break
    end

    case step
    when 'PUSH'   then  stack << register
    when 'ADD'    then  register += stack.pop
    when 'SUB'    then  register -= stack.pop
    when 'MULT'   then  register *= stack.pop
    when 'DIV'    then  register = register / stack.pop
    when 'MOD'    then  register = register % stack.pop
    when 'POP'    then  register = stack.pop
    when 'PRINT'  then  puts register
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# (3 + (4 * 5) - 7) / (5 % 3)
minilang('3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DIV PRINT')
# 8

minilang('3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT FLIP 3 ADD SUB DIV PRINT')
# Invalid command: FLIP
# Current Values -> Register: 20 Stack: [2, 7]
