class User
  ITEMS = [1, 2, 3].freeze

  def item(item_id:)
    @item ||= ITEMS
              .find{ |i| i == item_id }
  end
end

p User.new.item(item_id: 2)
