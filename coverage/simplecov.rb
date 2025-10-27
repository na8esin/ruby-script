require 'simplecov'
SimpleCov.start do
  enable_coverage :branch
end

require "#{__dir__}/sample.rb"
require "#{__dir__}/sample2.rb"
require "#{__dir__}/sample3.rb"
