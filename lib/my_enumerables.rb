module Enumerable
  # Your code goes here
  def example_method_find
    self.each do |yes|
      return yes if yield(yes)
    end
    
    nil
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    for item in self
      yield(item)
    end
  end
end
