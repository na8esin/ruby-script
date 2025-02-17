require 'active_support/all'

sample = { a: 1, b: 2, c: 3, d: 4 }

extr = [:b, :d]

p sample.extract!(*extr)
