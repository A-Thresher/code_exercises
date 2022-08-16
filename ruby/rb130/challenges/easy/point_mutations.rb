=begin

Problem:
  Given two strings return the number of non-matching characters
  Driven by test file

  Input: strings
  output: integer

  Rules:
    DNA objects have a string strand attribute
    The hamming_distance method requires a string strand argument
    Hamming Distance is the difference between the two strings
    If the compared strings are different length compute over the shorter length
    No difference between empty strands

Example:
  GAGCCTACTAACGGGAT
  CATCGTAATGACGGCCT  ->  7
  ^ ^ ^  ^ ^    ^^

  GACTACGGACAGGGTAGGGAAT
  GACATCGCACACC             -> 5
     ^^  ^   ^^

Data:
  DNA object with a string strand

Algorithm:
DNA class
  o initialize(string)
    - Initialize instance variable @strand as the input string

  o hamming_distance(string)
    - Initialize local variable counter as 0
    - iterate the shorter strand length number of times
      - if the characters at the current iteration index don't match add one to
        counter
    - return counter

=end

class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(strand2)
    counter = 0
    shorter = @strand.length < strand2.length ? @strand : strand2

    shorter.length.times do |idx|
      counter += 1 if @strand[idx] != strand2[idx]
    end

    counter
  end
end
