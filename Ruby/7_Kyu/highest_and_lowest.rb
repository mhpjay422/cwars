# In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.

# Example:

# high_and_low("1 2 3 4 5")  # return "5 1"
# high_and_low("1 2 -3 4 5") # return "5 -3"
# high_and_low("1 9 3 4 -5") # return "9 -5"
# Notes:

# All numbers are valid Int32, no need to validate them.
# There will always be at least one number in the input string.
# Output string must be two numbers separated by a single space, and highest number is first.

def high_and_low(numbers)
  num_arr = numbers.split(" ")
  hl = [num_arr.first.to_i, num_arr.first.to_i]
  
  num_arr.each do |num|
    highest = hl[0]
    lowest = hl[1]
    
    highest = num.to_i if num.to_i > highest
    lowest = num.to_i if num.to_i < lowest
  end

  highest.to_s + " " + lowest.to_s
end