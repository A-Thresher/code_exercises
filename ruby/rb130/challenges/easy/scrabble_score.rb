class Scrabble
  LETTER_VALUES = { 1  => %w(A E I O U L N R S T),
                    2  => %w(D G),
                    3  => %w(B C M P),
                    4  => %w(F H V W Y),
                    5  => %w(K),
                    8  => %w(J X),
                    10 => %w(Q Z) }

  def initialize(word)
    @word = word
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  def score
    return 0 if @word == nil
    @word.each_char.inject(0) do |sum, char|
      value = 0
      LETTER_VALUES.each { |k, v| value = k if v.include?(char.upcase) }
      sum + value
    end
  end
end
