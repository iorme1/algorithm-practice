# n = arr.max + 1
def bucket_sort(arr, n)
  buckets = Array.new(n)
  combined_buckets = []

  arr.each { |el| buckets[el] ? buckets[el] += [el] : buckets[el] = [el] }
  buckets.each { |el| el.each { |num| combined_buckets << num} if el }
  combined_buckets
end 
