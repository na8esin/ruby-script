arr = %w[Product Item]

arr2 = %w[
  Product
  Item
]
p arr

p arr2

class Sample
  SOME_CONSTANT_ARRAY = %w[
    Product
    Item
  ].freeze
end

p Sample::SOME_CONSTANT_ARRAY
