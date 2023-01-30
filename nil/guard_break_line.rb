class User
  ITEMS = [1, 2, 3].freeze
  attr_accessor :item_id

  def item
    @item ||= ITEMS
              .find { |i| i == item_id }
  end
end

p u = User.new
u.item_id = 3

# メモ化しておく
p u.item

u.item_id = nil

# メモ化されたものが呼び出される
p u.item # 3
