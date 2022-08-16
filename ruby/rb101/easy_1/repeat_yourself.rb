def repeat_yourself(string, integer)
  iterator = 0

  until iterator == integer
    puts string
    iterator += 1
  end
end

repeat_yourself('hello', 2)
repeat_yourself('gram', 3)
repeat_yourself('nine', 5)
repeat_yourself('zero?', 0)
