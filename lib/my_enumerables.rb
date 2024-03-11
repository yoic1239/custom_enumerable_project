module Enumerable
  # Your code goes here
  def my_each_with_index
    index = 0
    self.my_each do |element|
      yield element, index
      index +=1
    end
  end

  def my_select
    selected = []
    self.my_each do |element|
      selected << element if yield(element)
    end
    selected
  end

  def my_all?
    self.my_each do |element|
      return false unless yield(element)
    end
    true
  end

  def my_any?
    self.my_each do |element|
      return true if yield(element)
    end
    false
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for element in self
      yield element
    end
  end
end
