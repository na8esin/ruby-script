# frozen_string_literal: true

6.times.map { SecureRandom.random_number(10).to_s }.join

'%06d' % SecureRandom.random_number(100_000)

SecureRandom.random_number(100_000).to_s.rjust(6, '0')
