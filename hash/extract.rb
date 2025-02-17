require 'active_support/all'

sample = { a: 1, b: 2, c: 3, d: 4 }

extr = [:b, :d]

p sample.extract!(*extr) # {:b=>2, :d=>4}

p sample # {:a=>1, :c=>3}
