# keyword_initという引数もある
Customer = Struct.new(:name, :address) do
  # 構造体でメソッドかよ!とか思うけど、attr_accessorとかinitializeを書かなくていい分、楽
  def greeting
    "Hello #{name}!"
  end
end

#<struct Customer name="Dave", address="123 Main">
p c = Customer.new("Dave", "123 Main")
p c.greeting # => "Hello Dave!"

# Customerと表示される
p Customer.new("Dave", "123 Main").class

p Customer.new.name # nil。例外は発生しない

# この書き方もできるけど、Structの方が短い
class User
  attr_accessor :id

  def initialize
    yield self
  end
end

p User.new {|u| u.id = 12}.id # 12

# railsも含めるとattributeの選択肢もある
# active_modelはrailsの外で使うのは難しそう
#
# 下記の二つをincludeすることで、initializeが不要になる
# include ActiveModel::Model
# include ActiveModel::Attributes
#
# class Customer
#  include ActiveModel::Model
#   include ActiveModel::Attributes

#   attribute :name
#   attribute :address
# end

# Customer.new(name: 'Dave', address: '123 Main').name # Dave
