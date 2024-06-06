def merge_sort(arr)
  return arr if arr.length <= 1
  half = arr.length / 2.0
  left_half = arr[0, half]
  right_half = arr[half, half.ceil]
  merge(merge_sort(left_half), merge_sort(right_half))
end

def merge(arr1, arr2)
  result = []
  until arr1.empty? || arr2.empty?
    if arr1[0] < arr2[0]
      result.push(arr1.shift)
    else
      result.push(arr2.shift)
    end
  end

  result.push(*arr1) unless arr1.empty?
  result.push(*arr2) unless arr2.empty?

  result
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])

