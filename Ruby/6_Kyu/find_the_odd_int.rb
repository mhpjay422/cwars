# Given an array of integers, find the one that appears an odd number of times.

# There will always be only one integer that appears an odd number of times.

def find_it(seq)
  count = 0
  sorted = seq.sort
  
  sorted.each_with_index do |ele, i|
    count += 1
    next_ele_not_same = sorted[i] != sorted[i+1] 
    
    return ele if count.odd? && next_ele_not_same
  end
end

def find_it(seq)
  seq.detect { |n| seq.count(n).odd? }
end

# detect returns first that is not false