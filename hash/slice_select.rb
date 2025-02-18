sample = { a: 1, b: 2, c: 3, d: 4 }

extr = [:b, :d]

p sample.slice(*extr) # {:b=>2, :d=>4}
p sample # {:a=>1, :b=>2, :c=>3, :d=>4}

# 破壊的には変更されない

# p sample.slice!(*extr) # 破壊的メソッドは存在しない

sample.select! { |k, _| extr.include?(k) }
p sample
