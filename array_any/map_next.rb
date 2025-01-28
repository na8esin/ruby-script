b = [1, 2, 3].map do |e|
  next 4 if e == 2

  9
end

p b
