# frozen_string_literal: true

require "coverage"
Coverage.start(branches: true)
require "#{__dir__}/sample.rb"

# 結果が理解しづらい
p Coverage.result
