# frozen_string_literal: true

# Pseudocode
#
# Input: arr of size n
#   if n < 2
#     return
#   else
#     sort left half of elements
#     sort right half of elements
#     merge sorted halves
#   end

def merge_sort(arr)
  # base case
  return arr unless arr.size > 1

  # Divide the arr (left and right side)
  left = merge_sort(arr[0..arr.size / 2 - 1])
  right = merge_sort(arr[arr.size / 2..arr.size - 1])

  # debugging
  # puts "#{left} - #{right}"

  # Conquer the arr (merge)
  merge(left, right)
end

def merge(left, right, result = [])
  # sort left and right
  result << (left.first > right.first ? right.shift : left.shift) until left.empty? || right.empty?

  # this is so the rest of the array is also passed
  result + left + right
end

p merge_sort([5, 2, 9, 8, 3, 1])
