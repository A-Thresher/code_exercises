def triangle(size)
  size.times { |i| puts(('*' * (i + 1)).rjust(size)) }
end

def triangle2(size)
  size.times { |i| puts(('*' * (size - i)).rjust(size)) }
end

def triangle3(size, orient=0)
  case orient
  when 1 then size.times { |i| puts(('*' * (size - i)).rjust(size)) }
  when 2 then size.times { |i| puts(('*' * (i + 1)).ljust(size)) }
  when 3 then size.times { |i| puts(('*' * (i + 1)).rjust(size)) }
  else        size.times { |i| puts(('*' * (size - i)).ljust(size)) }
  end
end

triangle(5)
triangle2(9)

triangle3(3)
triangle3(3, 1)
triangle3(3, 2)
triangle3(3, 3)
