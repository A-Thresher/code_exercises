# Towable
module Towable
  def tow
    puts "I can tow a trailer!"
  end
end

# Inherited Year
class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def start_engine
    'Ready to go!'
  end
end

class Truck < Vehicle
  include Towable

  attr_reader :bed_type

  # Only Pass the Year
  def initialize(year, bed_type)
    super(year)
    @bed_type = bed_type
    # start_engine
  end

  # Start the Engine
  def start_engine(speed)
    super() + " Drive #{speed}, please!"
  end
end

class Car < Vehicle

end

truck1 = Truck.new(1994, 'Short')
puts truck1.year
puts truck1.bed_type
puts truck1.start_engine('fast')
truck1.tow

car1 = Car.new(2006)
puts car1.year


# Method Lookup 1
class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new('Black')
cat1.color  # Cat -> Animal


# Method Lookup 2
class Animal
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new('Black')
# cat1.color  # Cat -> Animal -> Object -> Kernal -> BasicObject -> NoMethodError


# Method Lookup 3
module Flyable
  def fly
    "I'm flying!"
  end
end

class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
  include Flyable
end

bird1 = Bird.new('Red')
bird1.color # Bird -> Flyable -> Animal


# Transportation
module Transportation
  class Vehicle
  end

  class Truck < Vehicle
  end

  class Car < Vehicle
  end
end
