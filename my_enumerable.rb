module MyEnumerable

  def all?(&block)
    each do |item|
      unless block.call(item)
        return false  
      end
    end
    true
  end

end
