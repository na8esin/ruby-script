carts = {'1':{quantity:1}, '2':{quantity:3}}

# SymbolからInteger
p carts.keys.map { |key| key.to_s.to_i }

carts2 = {1 => {quantity:1}, 2 => {quantity:3}}

product_id = 2
p carts2.keys
p carts2.select {|k, _v| k == 2 }.values.first
p carts2.select {|k, _v| k == 9 }.values.first

p carts2.merge({ product_id => { quantity: 2 } })
p carts2[2]