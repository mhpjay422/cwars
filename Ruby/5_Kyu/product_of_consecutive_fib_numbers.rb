# # The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned. Valid decimal values for RGB are 0 - 255. Any values that fall out of that range must be rounded to the closest valid value.

# # Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.

# # The following are examples of expected output values:

# # rgb(255, 255, 255) # returns FFFFFF
# # rgb(255, 255, 300) # returns FFFFFF
# # rgb(0,0,0) # returns 000000
# # rgb(148, 0, 211) # returns 9400D3
# The Fibonacci numbers are the numbers in the following integer sequence (Fn):

# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, ...

# such as

# F(n) = F(n-1) + F(n-2) with F(0) = 0 and F(1) = 1.

# Given a number, say prod (for product), we search two Fibonacci numbers F(n) and F(n+1) verifying

# F(n) * F(n+1) = prod.

# Your function productFib takes an integer (prod) and returns an array:

# [F(n), F(n+1), true] or {F(n), F(n+1), 1} or (F(n), F(n+1), True)
# depending on the language if F(n) * F(n+1) = prod.

# If you don't find two consecutive F(n) verifying F(n) * F(n+1) = prodyou will return

# [F(n), F(n+1), false] or {F(n), F(n+1), 0} or (F(n), F(n+1), False)
# F(n) being the smallest one such as F(n) * F(n+1) > prod.

# Some Examples of Return:
# (depend on the language)

# productFib(714) # should return (21, 34, true), 
#                 # since F(8) = 21, F(9) = 34 and 714 = 21 * 34

# productFib(800) # should return (34, 55, false), 
#                 # since F(8) = 21, F(9) = 34, F(10) = 55 and 21 * 34 < 800 < 34 * 55
# -----
# productFib(714) # should return [21, 34, true], 
# productFib(800) # should return [34, 55, false], 
# -----
# productFib(714) # should return {21, 34, 1}, 
# productFib(800) # should return {34, 55, 0},        
# -----
# productFib(714) # should return {21, 34, true}, 
# productFib(800) # should return {34, 55, false}, 

def productFib(prod)
  a = 0
  b = 1
  while b * a <= prod
    return [a, b, true] if b * a == prod
    tmp = b
    b += a
    a = tmp
  end
  return [a, b, false]
end

def productFib(prod)
  a, b = [0, 1]
  while prod > a * b
    a, b = [b, a + b]
  end
  [a, b, prod == a * b]
end