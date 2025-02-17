def sample1(*keys)
  p keys
end

def sample2(**keys)
  p keys
end


sample1([:a, :b])
sample1(*[:a, :b])
# sample1(**[:a, :b]) # no implicit conversion of Array into Hash (TypeError)

# sample2([:a, :b]) # wrong number of arguments (given 1, expected 0) (ArgumentError)
# sample2(*[:a, :b]) # wrong number of arguments (given 2, expected 0) (ArgumentError)
sample2(b: 1, a: 2)
sample2(**{b: 1, a: 2})
sample2(*{b: 1, a: 2}) #  wrong number of arguments (given 2, expected 0) (ArgumentError)
