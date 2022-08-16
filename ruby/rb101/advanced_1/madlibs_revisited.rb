=begin

Problem:
  Make a madlibs program that reads in a text file and replaces adjective, noun,
  adverb, and verb callouts with an appropriate random word.

  Input: text file, appropriatly formated
  Output: completed madlib

  Rules:
    Input text must be read from file
    Word lists can be directly in file

Example:
  Input:
    The %{adjective} brown %{noun} %{adverb}
    %{verb} the %{adjective} yellow
    %{noun}, who %{adverb} %{verb} his
    %{noun} and looks around.

  Output:
    The sleepy brown cat noisily
    licks the sleepy yellow
    dog, who lazily licks his
    tail and looks around.

Data:
  Hash, string

Algorithm:
  - create hash of replacement words
  - read text file, assign to string variable
  - Iterate through string words
    - if word matches format for replacement, replace (sub) with random
      selection from appropriate list
  - join and output transformed string

=end

LIBS = { adjective: %w(quick lazy sleepy ugly),
         noun: %w(fox dog head leg),
         verb: %w(jumps lifts bites licks),
         adverb: %w(easily lazily noisily excitedly)}

def madlib(text)
  words = File.read(text).split(/\n/).map(&:split)

  words.each do |line|
    line.map! do |word|
      case
      when  word.match?('%{adjective}')
        word.sub('%{adjective}', LIBS[:adjective].sample)
      when  word.match?('%{noun}')
        word.sub('%{noun}', LIBS[:noun].sample)
      when  word.match?('%{verb}')
        word.sub('%{verb}', LIBS[:verb].sample)
      when  word.match?('%{adverb}')
        word.sub('%{adverb}', LIBS[:adverb].sample)
      else
        word
      end
    end
  end

  puts words.map { |line| line.join(' ') }
end

madlib('madlib.txt')
