class Diamond
  def self.make_diamond(widest_letter)
    line_length = ((widest_letter.ord - 65) * 2) + 1
    string = upper_diamond(widest_letter, line_length) +
             lower_diamond(widest_letter, line_length)
  end

  class << self
    private

    def upper_diamond(widest_letter, line_length)
      construct_lines(('A'..widest_letter), line_length)
    end

    def lower_diamond(widest_letter, line_length)
      letter_offset = (widest_letter.ord - 1).chr
      construct_lines(('A'..letter_offset).to_a.reverse, line_length)
    end

    def construct_lines(range, line_length)
      range.map do |letter|
        if letter == 'A'
          'A'.center(line_length) + "\n"
        else
          spaces = ' ' * (((letter.ord - 65) * 2) - 1)
          (letter + spaces + letter).center(line_length) + "\n"
        end
      end.join
    end
  end
end
