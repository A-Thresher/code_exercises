# Group 1
# my_proc = proc { |thing| puts "This is a #{thing}." }
# puts my_proc
# puts my_proc.class
# my_proc.call
# my_proc.call('cat')

# Group 1 demonstrates the lenient arity of procs. While the proc can take and
# use an argument it does not raise an error when executed without one.


# Group 2
# my_lambda = lambda { |thing| puts "This is a #{thing}." }
# my_second_lambda = -> (thing) { puts "This is a #{thing}." }
# puts my_lambda
# puts my_second_lambda
# puts my_lambda.class
# my_lambda.call('dog')
# my_lambda.call
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }

# Group 2 demonstrates the strict arity of lambdas. `my_lambda` is defined with
# a parameter, and so invoking `call` on it requires an argument, thus the error
# raised on line 19. It also demonstrates how to create a lambda using the
# `lambda` method on line 13, not creating a new `Lambda` object which raises
# an error on ine 20 as there is not a built in `Lambda` class. The `lambda`
# method simply creates a `Proc` object that requires matching numbers of
# arguments and parameters, the definition of strict arity.


# Group 3
# def block_method_1(animal)
#   yield
# end

# block_method_1('seal') { |seal| puts "This is a #{seal}."}
# block_method_1('seal')

# Group 3 demonstrates that calling `yield` without a block raises an error.
# The `block_given?` method is required if your method does not require a block.
# It also shows the lenient arity of blocks. The block on line 36 is defined
# with a parameter, but calling `yield` with no arguments does not raise an
# error.


# Group 4
# def block_method_2(animal)
#   yield(animal)
# end

# block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
# block_method_2('turtle') do |turtle, seal|
#   puts "This is a #{turtle} and a #{seal}."
# end
# block_method_2('turtle') { puts "This is a #{animal}."}

# Group 4 shows several functions of lenient arity. Line 51 operates as
# expected, there is one parameter and one object. Line 52 has two parameters
# and a single argument. The argument is assigned to the first parameter and the
# second parameter returns `nil` when called because it is not assigned to
# anything. Line 55 has a single argument and no parameters. Therefore the call
# to `animal` in the block causes an error, there is no variable or method
# in scope of that name.



# Procs are objects with lenient arity
# Lambdas are Proc objects with strict arity
# Blocks have lenient arity and are not objects (they are closures)
