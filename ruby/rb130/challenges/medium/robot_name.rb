class Robot
  NAME_LETTERS = 2
  NAME_NUMBERS = 3

  @@active_names = []

  attr_reader :name

  def initialize
    @name = generate_name
  end

  def reset
    @@active_names.delete(name)
    @name = generate_name
  end

  private

  def generate_name
    name = ''

    loop do
      NAME_LETTERS.times { name << ('A'..'Z').to_a.sample }
      NAME_NUMBERS.times { name << rand(10).to_s }

      break unless @@active_names.include?(name)
      name = ''
    end

    @@active_names << name
    name
  end
end
