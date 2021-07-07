# Your job is to write a function which increments a string, to create a new string.

# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number. the number 1 should be appended to the new string.
# Examples:

# foo -> foo1

# foobar23 -> foobar24

# foo0042 -> foo0043

# foo9 -> foo10

# foo099 -> foo100

# Attention: If the number has leading zeros the amount of digits should be considered.

def increment_string(input)
  nums = "0123456789"
  return input + "1" if input == "" || !nums.include?(input[-1]) 
  end_zero = -1 
  end_nine = -1
  
  if input[end_zero] == "0"
    num_all_zero = true
    while num_all_zero
      num_all_zero = false
      end_zero -= 1
      if !nums.include?(input[end_zero])
        input[-1] = "1"
        return input
      elsif input[end_zero] == "0"
        puts "zero"
        num_all_zero = true
      end
    end
  end
  
  if input[end_nine] == "9"
    num_all_nine = true
    while num_all_nine
      num_all_nine = false
      input[end_nine] = "0"
      end_nine -= 1
      if input[end_nine] == "9"
        num_all_nine = true
        next
      elsif !nums.include?(input[end_nine]) 
        return input[0..end_nine] + "1" + input[end_nine + 1..-1]
      end  
        input[end_nine..end_nine + 1] = (input[end_nine].to_i + 1).to_s + "0"
        return input
    end
  end

  input.succ
end