# frozen_string_literal: true

def bubble_sort(arr)
  cur_idx = arr.size - 1
  until cur_idx <= 1
    arr.each_index do |idx|
      next unless arr[idx - 1] > arr[idx] && !idx.zero?

      arr[idx - 1], arr[idx] = arr[idx], arr[idx - 1]
      cur_idx = idx
    end
  end
  arr
end

# Example
p bubble_sort([4, 3, 78, 2, 0, 2])
