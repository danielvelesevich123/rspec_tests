# frozen_string_literal: true

require_relative 'node'

class LinkedList
  attr_accessor :head, :tail

  def add(value)
    if @head.nil?
      @head = Node.new(value, nil)
      @tail = @head
    else
      @tail.next = Node.new(value, nil)
      @tail = @tail.next
    end
  end

  def reverse
    return nil if nil?

    prev = nil
    curr = head

    until curr.nil?
      temp = curr.next
      curr.next = prev
      prev = curr
      curr = temp
    end
    self.head = prev
    self
  end

  def display
    return nil if nil?

    curr = head
    arr = []
    until curr.nil?
      arr.push(curr.value)
      curr = curr.next
    end
    p arr
  end
end
