module Enumerable
  # Your code goes here
  def my_each_with_index
    index = 0
    for item in self
      yield(item, index)
      index += 1
    end

    self
  end

  def my_select
    array = []
    for item in self
      array << item if yield(item)
    end

    array
  end

  def my_all?
    for item in self
      return false unless yield(item)
    end

    true
  end

  def my_any?
    for item in self
      return true if yield(item)
    end

    false
  end

  def my_none?
    for item in self
      return false if yield(item)
    end

    true
  end

  def my_count
    if block_given?
      count = 0
      for item in self
        count += 1 if yield(item)
      end
      count
    else   
      self.length
    end
  end

  def my_map
    array = []
    for item in self
      array << yield(item)
    end
    array
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
