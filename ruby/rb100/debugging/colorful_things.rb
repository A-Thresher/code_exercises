colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

# i > colors.length returns one size larger than colors, colors returns nil at i = 8
# Change break to colors.length - 1
# There are eight colors and seven things. things returns nil at i = 7
# Add another thing, remove a color, use things.length as break statement

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i == things.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

# FE: use an or statement to use both arrays as the break
# break if i == things.length || i == colors.length
