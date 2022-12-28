# keyword_initという引数もある
Customer = Struct.new(:name, :address)

#<struct Customer name="Dave", address="123 Main">
p Customer.new("Dave", "123 Main")

# Customerと表示される
p Customer.new("Dave", "123 Main").class

# この書き方もできるけど、Structの方が短い
class User
  attr_accessor :id

  def initialize
    yield self
  end
end

p User.new {|u| u.id = 12}.id # 12
