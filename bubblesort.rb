arr = [11, 6, 2, 100, 20, 2, 1, 9, 5, 10, 11]
def bubble_sort(arr)
  i = 0
  while i < arr.length - 1
    if arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      i -= 1 unless i.zero?
    else
      i += 1
    end
  end
  puts arr.to_s
end
bubble_sort(arr)

def bubble_sort_by(arr)
  i = 0
  while i < arr.length - 1
    if yield(arr[i], arr[i + 1]).positive?
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      i -= 1 unless i.zero?
    else
      i += 1
    end
  end
  puts arr.to_s
end

array = ['how are you', 'hi', 'Hi Jane how are you', 'hello', 'Jane', 'Lucas']

bubble_sort_by(array) do |left, right|
  left.length - right.length
end
