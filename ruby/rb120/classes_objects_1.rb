# Find the Class

puts "Hello".class
puts 5.class
puts [1, 2, 3].class


# Walk the Cat
module Walkable
  def walk
    puts "Let's go for a walk!"
  end
end

# Create the Class

class Cat
  include Walkable

  # Reader / Writer / Accessor
  attr_accessor :name

  # What Are You?
  def initialize(name)
    @name = name
    puts "I'm a cat!"
  end

  # Hello Sophie
  def greet
    puts "Hello! My name is #{name}!"
  end
end

# Create the Object
kitty = Cat.new('Sophie')
kitty.greet
kitty.name = "Luna"
kitty.greet
kitty.walk
