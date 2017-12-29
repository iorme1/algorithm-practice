# poorly_written_ruby method with code optimizations

def poorly_written_ruby(*arrays)
  sorted_array = [arrays.last.last]
  arrays.each do |array|
    array.each do |value|
      i = 0
      while i < sorted_array.length
        if value <= sorted_array[i]
          sorted_array.insert(i,value)
          break
        elsif i == sorted_array.length - 1
          sorted_array << value
          break
        end
        i+=1
      end
    end
  end
  sorted_array
end
