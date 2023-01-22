# frozen_string_literal: true

def stock_picker(prices)
  result = []
  totem = 0
  profit = 0

  # Checks all profits between totem and selling day
  while totem != (prices.size - 1)
    (prices.size - 1).downto(totem) do |i|
      next unless profit < prices[i] - prices[totem]

      profit = prices[i] - prices[totem]
      result.replace([totem, i])
    end
    totem += 1
  end

  result
end

# Example
p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]) # [1, 4]
p stock_picker([17, 3, 6, 9, 15, 8, 6, 20, 12, 14, 2, 9, 18, 5]) # [1, 7]
