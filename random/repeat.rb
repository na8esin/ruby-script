# frozen_string_literal: true

require 'securerandom'

20.times do
  p SecureRandom.random_number(1_000_000).to_s.rjust(6, '0')
end
