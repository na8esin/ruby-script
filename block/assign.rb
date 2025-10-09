# frozen_string_literal: true

def sample
  yield({ a: true, b: false })
end

data = []

sample do |h|
  data << 'a' if h[:a]
  data << 'b' if h[:b]
end

p data
