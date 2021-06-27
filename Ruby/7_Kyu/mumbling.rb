# This time no story, no theory. The examples below show you how to write function accum:

# Examples:

# accum("abcd") -> "A-Bb-Ccc-Dddd"
# accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# accum("cwAt") -> "C-Ww-Aaa-Tttt"
# The parameter of accum is a string which includes only letters from a..z and A..Z.

def accum(s)
  result = ""
  num_letters = 1
  
  s.chars.each do |letter|
    result += letter.upcase
    (num_letters - 1).times do
      result += letter.downcase
    end
    break if s.length == num_letters
    result += "-"
    num_letters += 1
  end
  
  result
end