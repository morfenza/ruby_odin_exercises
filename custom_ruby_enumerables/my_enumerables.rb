module Enumerable
  def my_each_with_index
    index = 0
    while index <= size - 1
      yield(self[index], index)
      index += 1
    end

    self
  end

  def my_select
    selected = []

    for element in self do
      selected << element if yield(element) == true
    end

    selected
  end

  def my_all?
    criteria = true

    for element in self do
      criteria = false unless yield(element)
    end

    criteria
  end

  def my_any?
    criteria = false

    for element in self do
      criteria = true if yield(element)
    end

    criteria
  end

  def my_none?
    criteria = true

    for element in self
      criteria = false if yield(element)
    end

    criteria
  end

  def my_count
    return size unless block_given?

    count = 0

    for element in self do
      count += 1 if yield(element)
    end

    count
  end

  def my_map
    mapped = []

    for element in self do
      mapped << yield(element)
    end

    mapped
  end

  def my_inject(acc = self[0])
    for element in self do
      acc = yield(acc, element)
    end

    acc
  end
end

class Array
  def my_each
    for element in self do
      yield(element)
    end

    self
  end
end
