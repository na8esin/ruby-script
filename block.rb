def foo(x:, y:, &a)
  p x
  p y
  b = 3
  p yield(b)
  p b
end

foo(x: 1, y: 2) { |b| p b + 4 }