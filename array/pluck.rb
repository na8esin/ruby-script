require 'active_support/all'

sample = [{ name: "David" }, { name: "Rafael" }, { name: "Aaron" }]
mapped = sample.map { |e| e[:name] }
plucked = sample.pluck(:name) # => ["David", "Rafael", "Aaron"]
p mapped == plucked # true
# 上記2つは同じ結果

sample2 = [{ id: 1, name: "David" }, { id: 2, name: "Rafael" }]
p sample2.map { |e| [e[:id], e[:name]] }
p sample2.pluck(:id, :name) # => [[1, "David"], [2, "Rafael"]]
# 上記2つも同じ結果