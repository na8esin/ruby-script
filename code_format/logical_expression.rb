def sample(a, b, c)
  a &&
    b &&
    c
end

p sample(true, false, true)
p sample(true, true, true)
p sample(true, true, false)
