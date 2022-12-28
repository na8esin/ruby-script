carts = { 1 => { quantity: 1 }, 2 => { quantity: 3 } }

p '---- select ----'
p carts.select { |k, _v| k == 1 }.values       # [{:quantity=>1}]
p carts.select { |k, _v| k == 1 }.values.first # {:quantity=>1}
p carts.select { |k, _v| k == 9 }.values.first # nil

p ''
p '---- find ----'
p carts.find { |k, _v| k == 1 }      # [1, {:quantity=>1}]
p carts.find { |k, _v| k == 1 }.last # {:quantity=>1}。lastをつけないといけないのが直感的じゃない

p ''
p '---- values_at ----'
p carts.values_at(1)       # [{:quantity=>1}]
p carts.values_at(1).first # {:quantity=>1}
# 存在しない場合
p carts.values_at(9)       # [nil]
p carts.values_at(9).first # nil

# 確かここの結論はvalues_at(1).firstだったはず