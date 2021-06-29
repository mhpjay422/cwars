# Simple, given a string of words, return the length of the shortest word(s).

# String will never be empty and you do not need to account for different data types.

def find_short(s)
    s.split(" ").map {|word| word.length}.min
end

def find_short(s)
    s.split(" ").map {&:length}.min

    # use &: to turn the block into a Proc. 
end

# Ruby instantiates a MySymbol object;

# Ruby checks that there is a & and calls to_proc on this object;

# MySymbol#to_proc returns a Proc object, that expects a parameter (element) and calls a method on it (upcase);

# my_map iterates over the received list (['foo', 'bar']) and calls the received Proc on each element, passing it as a parameter (block.call(element));

# The Proc then executes element.send("upcase"), that is basically the same as "foo".upcase, and will return the expected result.