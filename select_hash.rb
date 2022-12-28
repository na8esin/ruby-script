carts = [
  {customer_id:1, product_id:1},
  {customer_id:1, product_id:2},
]
p '存在しない場合'
p not_exits = carts.select { |cart| cart[:product_id] == 3 }
'not_exits' if not_exits


p '存在する場合'
p carts.select { |cart| cart[:product_id] == 2 }