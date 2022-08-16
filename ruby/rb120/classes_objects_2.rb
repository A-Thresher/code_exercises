class Cat
  COLOR = 'purple'

  @@total_cats = 0

  attr_accessor :name

  def initialize(name)
    @name = name

    @@total_cats += 1
  end

  # Hello, Chloe!
  def rename(name)
    self.name = name
  end

  # Generic Greeting / Colorful Cat
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end

  def personal_greeting
    puts "Hello! My name is #{name} and I'm a #{COLOR} cat!"
  end

  # Identify Yourself
  def identify
    self
  end

  def to_s
    "I'm #{name}!"
  end

  # Counting Cats
  def self.total
    @@total_cats
  end
end

kitty1 = Cat.new('Sophie')
kitty2 = Cat.new('Churble')

Cat.generic_greeting
kitty1.personal_greeting

kitty1.rename('Chloe')
puts kitty1.name

p kitty1.identify
puts kitty1

p Cat.total


# Public Secret / Private Secret / Protected Secret
class Person
  attr_writer :secret

  def share_secret
    puts secret
  end

  def compare_secret(other)
    secret == other.secret
  end

  protected

  attr_reader :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
person1.share_secret

person2 = Person.new
person2.secret = 'Shh.. this is a different secret!'

puts person1.compare_secret(person2)
