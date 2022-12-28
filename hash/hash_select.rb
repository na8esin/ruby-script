param_product_id = '1'
carts = {'1':{quantity: 1}, '2':{quantity:2}}
p selected = carts.select {|product_id, _v| product_id == param_product_id.intern }
p first = selected.values.first

p first[:quantity] += 1
p carts.merge({ "#{param_product_id}": {quantity: first[:quantity]} })