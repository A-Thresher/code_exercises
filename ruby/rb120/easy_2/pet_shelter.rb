class Pet
  attr_reader :type, :name

  @@unowned_pets = []

  def initialize(type, name)
    @type = type
    @name = name

    @@unowned_pets << self
  end

  def adopted
    @@unowned_pets.delete(self)
  end

  def self.print_unadopted
    @@unowned_pets.each { |pet| puts pet }
  end

  def self.number_unadopted
    @@unowned_pets.size
  end

  def to_s
    "a #{type} named #{name}"
  end
end

class Owner
  attr_reader :name
  attr_accessor :pets

  def initialize(name)
    @name = name
    @pets = []
  end

  def number_of_pets
    self.pets.size
  end
end

class Shelter
  attr_accessor :owners

  def initialize
    @owners = []
  end

  def adopt(owner, pet)
    owners << owner unless owners.include?(owner)
    owner.pets << pet
    pet.adopted
  end

  def print_adoptions
    owners.each do |owner|
      puts "#{owner.name} has adopted the following pets:"
      owner.pets.each do |pet|
        puts pet
      end
      puts ""
    end
  end

  def print_unadopted
    puts "The Animal Shelter has the following unadopted pets:"
    Pet.print_unadopted
    puts ''
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')
asta         = Pet.new('dog','Asta')
laddie       = Pet.new('dog','Laddie')
fluffy       = Pet.new('cat','Fluffy')
kat          = Pet.new('cat','Kat')
ben          = Pet.new('cat','Ben')
chatterbox   = Pet.new('parakeet','Chatterbox')
bluebell     = Pet.new('parakeet','Bluebell')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
shelter.print_unadopted
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "The Animal Shelter has #{Pet.number_unadopted} unadopted pets."
