name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# prints Alice\n Bob. Name is reassigned to 'Alice' which doesn't affect
# save_name

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# prints BOB\n BOB. The object name references is mutated to BOB. Since
# save_name references the same object it also returns BOB.
