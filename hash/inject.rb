products = [{url: 'hoge'},{url: 'fuga'}]

injected = products.inject({images:[]}) do |result, product|
  result[:images].push(product[:url])
  result
end

p injected