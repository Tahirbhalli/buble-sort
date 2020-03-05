arr = [2, 6, 1, 8, 12, 4, 9]
def buble_sort(arr)
  i = 0
  a = 0
  while a < arr.length
    i = 1
    while i < arr.length - a
      if arr[i - 1] > arr[i]
        temp = arr[i]
        arr[i] = arr[i - 1]
        arr[i - 1] = temp
      end
      i += 1
    end
    a += 1
  end
  arr
end
arr = buble_sort(arr)

arr.each { |x| print(x) }
puts "\n"
def bubble_sort_by(arr)
  (arr.length - 1).times do |i|
    (arr.length - i - 1).times do |j|
      result = yield(arr[j],arr[j + 1])
      next unless result.positive?
      temp = arr[j]
      arr[j] = arr[j + 1]
      arr[j + 1] = temp
    end
  end
  arr
end
arr2 = ["tahir", "am", "i"]

bubble_sort_by(arr2) do |left, right|
  left.length - right.length
end
arr2.each { |i| print(i + ' ') }