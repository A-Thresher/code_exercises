print("Please write word or multiple words: ")
input_string = gets.chomp

character_string = input_string.delete(' ')

puts("There are #{character_string.length} characters in \"#{input_string}\".")
