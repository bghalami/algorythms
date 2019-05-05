# Runtime: 372 ms, faster than 25.00% of Ruby online submissions for Fruit Into Baskets.
# Memory Usage: 12.2 MB, less than 100.00% of Ruby online submissions for Fruit Into Baskets.
# Example 1:
# Input: [1,2,1]
# Output: 3
# Explanation: We can collect [1,2,1].

# Example 2:
# Input: [0,1,2,2]
# Output: 3
# Explanation: We can collect [1,2,2].
# If we started at the first tree, we would only collect [0, 1].

def total_fruit(tree)
  total_fruits = 0
  i = 0
  while i < tree.length do
      basket1 = 0
      basket2 = 0
      p = 0
      types = []
      j = i
      until j >= tree.length do
          if basket1.zero? || types.include?(tree[j])
              basket1 += 1
              types << tree[j] if types.empty?
          elsif basket2.zero? || types.include?(tree[j])
              basket2 += 1
              if types.length == 1 
                  types << tree[j]
                  p = j
              end
          else
              break
          end
          total_fruits = (basket1 + basket2) if (basket1 + basket2) > total_fruits
          return total_fruits if total_fruits == tree.length
          j += 1
      end
      p > i ? i = p : i += 1
  end
  total_fruits
end