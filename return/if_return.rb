def sample
  'aaa'
  return if false
end

def sample2
  a = 'aaa'
  return if false
  a
end

def sample3
  'aaa'
  'bbb' if true
end


p sample # => nil

p sample2 # => aaa

p sample3 # => nil