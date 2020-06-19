arr = [11, 6, 2, 100, 20, 2, 1, 9, 5, 10, 11]
def bubble_sort(arr)
  i = 0
  while i < arr.length - 1 
    if arr[i] > arr[i+1] 
      arr[i], arr[i+1] = arr[i+1], arr[i]
      i-=1 unless i==0        
    else
      i+=1
    end
  end
  puts arr
end
bubble_sort(arr)

def bubble_sort_by(arr) 
end

bubble_sort_by(arr) do |left,right|
  left.length - right.length