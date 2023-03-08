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
