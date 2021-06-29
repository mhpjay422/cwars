# Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.

# Your task is to write a function maskify, which changes all but the last four characters into '#'.

# Examples
# maskify('4556364607935616') # should return '############5616'
# maskify('64607935616')      # should return '#######5616'
# maskify('1')                # should return '1'
# maskify('')                 # should return ''

# # "What was the name of your first pet?"
# maskify('Skippy')                                   # should return '##ippy'
# maskify('Nananananananananananananananana Batman!') # should return '####################################man!'

def maskify(cc)
  return cc if cc.length < 5
  
  hashes = (1..(cc.length - 4)).collect{"#"}.join
  remaining = cc[cc.length - 4..cc.length - 1]
  
  hashes + remaining
end

def maskify(cc)
  cc.size <= 4 ? cc : "#" * (cc.length-4) + cc[-4..-1]
end