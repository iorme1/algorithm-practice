def swap(arr, first_index, second_index)
  temp = arr[first_index]
  arr[first_index] = arr[second_index]
  arr[second_index] = temp
end

def partition(arr, beg, en)
  pivot = arr[en]
  p_index = beg

  for i in beg..(en-1)
    if arr[i] <= pivot
      swap(arr, i, p_index)
      p_index += 1
    end
  end
  swap(arr, p_index, en)
  return p_index
end


def quicksort(arr, beg, en)
  if beg < en
    p_index = partition(arr, beg, en)
    quicksort(arr, beg, p_index-1)
    quicksort(arr, p_index+1, en)
  end
  arr
end
