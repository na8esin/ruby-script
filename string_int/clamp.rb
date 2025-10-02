# frozen_string_literal: true

p 0.clamp(1, 100) # 1

p 'a'
  .to_i
  .tap { |e|
    p e # 0
  }
  .clamp(1, 100) # 1

p 101.clamp(1, 100) # 100
