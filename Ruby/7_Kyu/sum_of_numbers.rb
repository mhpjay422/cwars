# Given two integers a and b, which can be positive or negative, find the sum of all the integers between and including them and return it. If the two numbers are equal return a or b.

# Note: a and b are not ordered!

# Examples
# get_sum(1, 0) == 1   # 1 + 0 = 1
# get_sum(1, 2) == 3   # 1 + 2 = 3
# get_sum(0, 1) == 1   # 0 + 1 = 1
# get_sum(1, 1) == 1   # 1 Since both are same
# get_sum(-1, 0) == -1 # -1 + 0 = -1
# get_sum(-1, 2) == 2  # -1 + 0 + 1 + 2 = 2

def get_sum(a,b)
  return a if a == b
  
  result = 0
  min = a < b ? a : b
  max = min == a ? b : a
  num = min
  
  until num == max
    result += num
    num += 1
  end
  
  result + max
end

def get_sum(a,b)
  return a < b ? (a..b).reduce(:+) : (b..a).reduce(:+) 
end