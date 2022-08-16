# Used an array in the `SimpleLinkedList` class which may defeat the
# purpose of a linked list, depending on implementation.

class Element
  attr_reader :datum, :next

  def initialize(datum, _next = nil)
    @datum = datum
    @next = _next
  end

  def tail?
    self.next == nil
  end
end

class SimpleLinkedList
  def initialize(elements = [])
    @elements = elements
  end

  def self.from_a(array)
    list = new
    array.reverse_each { |datum| list.push(datum) } if array
    list
  end

  def size
    @elements.size
  end

  def empty?
    @elements.size == 0
  end

  def push(datum)
    @elements << Element.new(datum, @elements[-1])
  end

  def peek
    @elements[-1].datum if @elements[-1]
  end

  def head
    @elements.last
  end

  def pop
    @elements.pop.datum
  end

  def to_a
    @elements.map(&:datum).reverse
  end

  def reverse
    SimpleLinkedList.from_a(to_a.reverse)
  end
end
