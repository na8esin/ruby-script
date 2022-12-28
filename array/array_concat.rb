# [{:product_id=>1, :quantity=>1}, {:product_id=>1, :quantity=>1}]
# mergeされたりしない
p [{product_id:1, quantity:1}].concat [{product_id:1, quantity:1}]