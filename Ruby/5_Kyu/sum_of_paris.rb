# Sum of Pairs
# Given a list of integers and a single sum value, return the first two values (parse from the left please) in order of appearance that add up to form the sum.

# sum_pairs([11, 3, 7, 5],         10)
# #              ^--^      3 + 7 = 10
# == [3, 7]

# sum_pairs([4, 3, 2, 3, 4],         6)
# #          ^-----^         4 + 2 = 6, indices: 0, 2 *
# #             ^-----^      3 + 3 = 6, indices: 1, 3
# #                ^-----^   2 + 4 = 6, indices: 2, 4
# #  * entire pair is earlier, and therefore is the correct answer
# == [4, 2]

# sum_pairs([0, 0, -2, 3], 2)
# #  there are no pairs of values that can be added to produce 2.
# == None/nil/undefined (Based on the language)

# sum_pairs([10, 5, 2, 3, 7, 5],         10)
# #              ^-----------^   5 + 5 = 10, indices: 1, 5
# #                    ^--^      3 + 7 = 10, indices: 3, 4 *
# #  * entire pair is earlier, and therefore is the correct answer
# == [3, 7]
# Negative numbers and duplicate numbers can and will appear.

# NOTE: There will also be lists tested of lengths upwards of 10,000,000 elements. Be sure your code doesn't time out.

def sum_pairs(ints, s)
    results = []
    low_index = ints.length
  
    ints.each_with_index do |num, i|
      target_num = s - num
      clone_arr = ints.map(&:clone)
      clone_arr.delete_at(i)
      num_index = clone_arr.index(target_num)
      
      if results.include?([num, target_num].reverse) && num == target_num
        results.shift
      end  

      if clone_arr.include?(target_num) && num_index < low_index && !results.include?([num, target_num])
        results << [num, target_num]
        low_index = num_index
      end
    end  
  
    results.length == 0 ? nil : results.first
end

def sum_pairs(ints, s)
    results = nil
    low_index = 0
    i = 0
    pass_i = 0
  
    ints.reverse[i..-1].each do |num|
      better_i = i + pass_i >= low_index
      
      if ints.reverse[i + 1..-1].include?(s - num) && better_i
        results = [num, s - num]
        low_index = i
      end
      
      pass_i += 1
      i += 1
    end

    results == nil ? nil : [results[1], results[0]]
end