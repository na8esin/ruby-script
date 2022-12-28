User = Struct.new(:id)

users = []
users.push(User.new(2))
users.push(User.new(33))
users.push(User.new(45))
users.push(User.new(68))

injected = users.inject({}) { |result, u| result.merge({ u.id => u }) }
p injected[33] # <struct User id=33>
