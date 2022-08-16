=begin

Problem:
  Write a program that reads the content of a text file and then prints the
  longest sentence in the file based on number of words as well as the number
  of words in that sentence.

  Input: separate text file
  Output: Printed string

  Rules
  - Sentences may end with periods, exclamation points and question marks
  - Any sequence of characters that are not spaces or sentence ending characters
    should be treated as a word

Examples:
  C:\Users\Andrew\launch_school\rb101\small_problems\medium_2\longest_sentence_text.txt
    => last sentence, 86 words

Data:
  String, array

Algorithm:
  - read text file in as a string
  X replace newlines with whitespace
  - split string by sentence ending characters
    - scan with regex (keep sentence enders), strip extra whitespaces
  - split sentences by spaces
  - find largest sentence array
  - print size of array, then join and print the sentence

=end

def longest_sentence(file)
  text_doc = File.read(file)
  sentences = text_doc.scan(/[^.?!]*[.?]/).map(&:strip)

  sentence_length = 0
  longest = ''

  sentences.each do |line|
    next if line.split.size < sentence_length
    sentence_length = line.split.size
    longest = line
  end

  puts "(#{sentence_length} words)\n" + longest
end

longest_sentence('pg84.txt')
