class Anagram
  def initialize(seed)
    @seed = seed
    @anagrams = populate_anagrams(seed.downcase)
  end

  def match(words)
    words.select { |word| @anagrams.include?(word.downcase) }
  end

  private

  def populate_anagrams(string)
    anagrams = string.chars.permutation.map(&:join).uniq
    anagrams.delete(string)
    anagrams
  end
end
