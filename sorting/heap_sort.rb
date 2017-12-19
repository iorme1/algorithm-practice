def swap(arr, first_index, second_index)
  temp = arr[first_index]
  arr[first_index] = arr[second_index]
  arr[second_index] = temp
end

def max_heapify(arr,n,i)
  largest = i
  l = 2*i + 1
  r = 2*i + 2

  if (l < n && arr[l] > arr[largest])
    largest = l
  end
  if (r < n && arr[r] > arr[largest])
    largest = r
  end
  if largest != i
    swap(arr, i, largest)
    max_heapify(arr, n, largest)
  end
end


def heap_sort(arr)
  n = arr.length
  i = n/2 - 1
  while i >= 0
    max_heapify(arr, n, i)
    i = i - 1
  end
  i = n-1
  while i >= 0
    swap(arr,0,i)
    max_heapify(arr, i, 0)
    i = i - 1
  end
  arr
end
