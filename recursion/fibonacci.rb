# frozen_string_literal: true

# Using non recursive approach
def fibs(num)
  return 0 if num.zero?
  return 1 if num == 1

  fibo = [0, 1]
  fibo << (fibo[-1] + fibo[-2]) while fibo.size < num

  fibo
end

# Using recursive approach
def fibs_rec(num)
  return [0] if num == 1
  return [0, 1] if num == 2

  fibo = fibs_rec(num - 1)
  fibo << fibo[-1] + fibo [-2]
end

puts "Non-recursive: #{fibs(8)}"
puts "Recursive: #{fibs_rec(8)}"
