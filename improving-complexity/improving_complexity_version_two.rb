# poorly_written_ruby method with improved time complexity using quicksort
def conquer(left,right)
  if left.empty?
    return right
  elsif right.empty?
    return left
  elsif left.first < right.first
    [left.first] + conquer(left[1..left.length], right)
  else
    [right.first] + conquer(left, right[1..right.length])
  end
end

def divide(arr)
  if arr.length <= 1
    return arr
  else
    mid = (arr.length / 2).floor
    left = divide(arr[0..mid-1])
    right = divide(arr[mid..arr.length-1])
    conquer(left,right)
  end

end


def poorly_written_ruby(*arrays)
  combined_array = arrays.flatten
  sorted = divide(combined_array)
  return sorted
end
