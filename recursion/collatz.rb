# frozen_string_literal: true

def collatz(num)
  return 0 if num == 1

  return collatz(num / 2) + 1 if num.even?

  collatz(3 * num + 1) + 1
end

puts collatz(9663)
