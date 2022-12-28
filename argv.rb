# frozen_string_literal: true

def main(argv)
  argv.each { |e| p e }
end

start = ARGV.first
end_ = ARGV[1] # railsだと secondがある

(start.to_i..end_.to_i).each { |e| p e }
