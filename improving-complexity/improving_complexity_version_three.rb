# poorly_written_ruby method with improved space complexity
def swap(arr, first, second)
  temp = arr[first]
  arr[first] = arr[second]
  arr[second] = temp
end

def partition(arr, beg, en)
  pivot = arr[en]
  p_index = beg

  for i in beg..(en-1)
    if arr[i] <= pivot
      swap(arr,i,p_index)
      p_index += 1
    end
  end
  swap(arr, p_index, en)
  return p_index
end

def quicksort(arr,beg,en)
  if beg < en
    p_index = partition(arr,beg,en)
    quicksort(arr, beg, p_index-1)
    quicksort(arr, p_index+1, en)
  end
  arr
end

def poorly_written_ruby(*arrays)
  combined_array = arrays.flatten
  quicksort(combined_array, 0, combined_array.length-1)
end
