# frozen_string_literal: true

require "coverage"
Coverage.start(oneshot_lines: true)
require "#{__dir__}/sample.rb"

p Coverage.result.values[0][:oneshot_lines].sort
