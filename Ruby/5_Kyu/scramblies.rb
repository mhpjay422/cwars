def scramble(s1,s2)
  s1length = s1.length
  mod_str = s1.clone
  
  s2.chars.each do |letter|
    mod_str.sub!(letter, "")
  end

  mod_str.length == s1.length - s2.length
end

def scramble(s1,s2)
  s2.chars.uniq.all?{|x| s2.count(x)<=s1.count(x)}
end