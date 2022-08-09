def merge_sort(array)
  return array if array.length < 2
  left_sorted = merge_sort(array[0..array.length/2-1])
  right_sorted = merge_sort(array[array.length/2..-1])
  sorted = []
  until left_sorted[0] == nil && right_sorted[0] == nil
    if right_sorted[0] == nil
      sorted.concat(left_sorted)
      left_sorted = []
    elsif left_sorted[0] == nil
      sorted.concat(right_sorted)
      right_sorted = []
    elsif left_sorted[0] < right_sorted[0]
      sorted.push(left_sorted[0])
      left_sorted = left_sorted[1..-1]
    else
      sorted.push(right_sorted[0])
      right_sorted = right_sorted[1..-1]
    end
  end
  return sorted
end