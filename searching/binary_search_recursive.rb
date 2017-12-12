def recursive_search(collection, value)
  low = 0
  high = (collection.length - 1)

  while low <= high
    mid = (low + high) / 2
    if collection[mid] > value
      high = mid - 1
      recursive_search(collection[mid..high],value)
    elsif collection[mid] < value
      low = mid + 1
      recursive_search(collection[low..mid],value)
    else
      return mid
    end
  end
end
