module MyEnumerable

  def all?(&block)
    each do |item|
      unless block.call(item)
        return false  
      end
    end
    true
  end

  def any?(&block)
    each do |item|
      if block.call(item)
        return true
      end
    end
    false
  end

  def filter(&block)
    result = []
    each do |item|
      if block.call(item)
        result << item
      end
    end
    result
  end
end
