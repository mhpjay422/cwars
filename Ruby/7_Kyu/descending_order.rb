# Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

# Examples:
# Input: 42145 Output: 54421

# Input: 145263 Output: 654321

# Input: 123456789 Output: 987654321

def descending_order(n)
  digit_arr = n.to_s.chars
  sorted_str = digit_arr.sort.reverse.join
  sorted_num = sorted_str.to_i
end