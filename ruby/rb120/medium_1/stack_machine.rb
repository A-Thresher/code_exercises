class Minilang
  def initialize(command_string)
    @command_arr = command_string.split(' ')
    @register = 0
    @stack = []
  end

  def eval
    command_arr.each do |command|
      case command
      when ('0'..'9'), ('-1'..'-9') then self.register = command.to_i
      when 'PUSH'     then stack << register
      when 'ADD'      then self.register += stack.pop
      when 'SUB'      then self.register -= stack.pop
      when 'MULT'     then self.register *= stack.pop
      when 'DIV'      then self.register /= stack.pop
      when 'MOD'      then self.register %= stack.pop
      when 'POP'      then self.register = stack.pop
      when 'PRINT'    then print
      else                 puts ("Invalid token: #{command}"); break
      end
    end
  end

  private

  attr_reader :command_arr
  attr_accessor :register, :stack

  def print
    if register
      puts register
    else
      puts 'Empty stack!'
    end
  end

end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)
