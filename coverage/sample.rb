# frozen_string_literal: true

def sample(a:)
  return if a.nil?

  p a&.to_s
end

sample(a: nil)
sample(a: 42)
