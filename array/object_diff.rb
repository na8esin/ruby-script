require 'securerandom'

class User
  attr_accessor :id

  def initialize
    yield self
  end
end

a = User.new { |u| u.id = 1 }
b = User.new { |u| u.id = 2 }
c = User.new { |u| u.id = 3 }

p [a, c] - [b, c] # [#<User:0x00000001025c0550 @id=1>]

class Customer
  attr_accessor :name

  def initialize
    yield self
  end
end

x = Customer.new { |c| c.name = 'x' }
y = Customer.new { |c| c.name = 'y' }
z = Customer.new { |c| c.name = 'z' }

p [x, z] - [y, z] # [#<Customer:0x000000010256fdf8 @name="x">]

# オブジェクトhashを見て判別してるっぽい？
