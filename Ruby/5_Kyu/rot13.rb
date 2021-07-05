# ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters after it in the alphabet. ROT13 is an example of the Caesar cipher.

# Create a function that takes a string and returns the string ciphered with Rot13. If there are numbers or special characters included in the string, they should be returned as they are. Only letters from the latin/english alphabet should be shifted, like in the original Rot13 "implementation".

def rot13(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  arr_string = string.chars.map do |letter|
    if !alphabet.index(letter.downcase)
      letter
    elsif letter == letter.capitalize
      alphabet[(alphabet.index(letter.downcase) + 13) % 26].capitalize
    else 
      alphabet[(alphabet.index(letter.downcase) + 13) % 26]
    end 
  end
  arr_string.join
end