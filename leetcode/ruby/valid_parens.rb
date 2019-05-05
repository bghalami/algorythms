# RUNTIME: 36 ms, faster than 99.76% of Ruby online submissions for Valid Parentheses.
# MEMORY USAGE: 9.4 MB, less than 88.46% of Ruby online submissions for Valid Parentheses.

# Input: "()[]{}"
# Output: true

# Input: "(]"
# Output: false

# @param {String} s
# @return {Boolean}
def is_valid(s)
  r = s.chars
  hash = {"}" => "{", ")" => "(", "]" => "["}
  i = 0
  while i < r.length do
    if hash.has_key?(r[i])
      if hash[r[i]] == r[i - 1]
        r.delete_at(i)
        r.delete_at(i - 1)
        0 <= (i - 2) ? (i -= 2) : (i = 0)
      else
        return false
      end
    else
      i += 1
    end
  end
  r.length.zero?
end

p is_valid("()[]{}")
# should output true

p is_valid("{{(]}}")
# should output false