User = Struct.new(:id)

a = [User.new(1), User.new(2), User.new(3)]

b = a.reject do |e|
  e.id == 2
end

p b
