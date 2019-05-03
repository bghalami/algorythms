# Given an array of integers, return indices of the two numbers such that they add up to a specific target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# Example:
#   Given nums = [2, 7, 11, 15], target = 9,
#   Because nums[0] + nums[1] = 2 + 7 = 9,
#   return [0, 1].
def two_sum(nums, target)
  hash = Hash.new()
  nums.each_with_index do |num, i|
      if hash.has_key?(target - num)
          return [hash[target - num], i]
      else
          hash[num] = i
      end
  end
end

p two_sum([-3,4,3,90], 0)
# should return [0,2]