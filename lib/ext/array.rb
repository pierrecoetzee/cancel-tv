class Array
  def entry_first(entry)
    reject! { |f| f == entry }
    ([entry] << self).flatten
  end

  def sometestfunction
     []
  end
end
