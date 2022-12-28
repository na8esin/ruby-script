# frozen_string_literal: true

total = 0
num = 22
loop do
  total += num
  # もちろん20を超えてるけど、一回は実行される
  p total
  break if total > 20

  num += 1
end
puts num
p total
