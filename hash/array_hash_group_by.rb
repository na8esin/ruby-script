class Cart
  attr_accessor :product_id

  def initialize(product_id)
    @product_id = product_id
  end
end

carts = [
  Cart.new(1),
  Cart.new(1),
  Cart.new(2),
  Cart.new(3)
]

bundle_product_ids = [1, 3]

p filterd = carts.filter { |cart| bundle_product_ids.include?(cart.product_id) }
# product_idメソッドの戻り値をkeyとしてgroupingする
filterd.group_by(&:product_id)
# {1=>[#<Cart:0x00007f92259efd40 @product_id=1>, #<Cart:0x00007f92259efcc8 @product_id=1>], 3=>[#<Cart:0x00007f92259efc28 @product_id=3>]}
