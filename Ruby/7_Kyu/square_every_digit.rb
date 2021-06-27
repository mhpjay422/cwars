# Welcome. In this kata, you are asked to square every digit of a number and concatenate them.

# For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.

# Note: The function accepts an integer and returns an integer

def square_digits num
  result = ""
  arr_num = num.to_s.chars
  
  arr_num.each do |num|
    sq = num.to_i * num.to_i
    
    result += sq.to_s
  end
  
  result.to_i
end