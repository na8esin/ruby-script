User = Struct.new(:id)

users = []
users.push(User.new(2))
users.push(User.new(33))
users.push(User.new(45))
users.push(User.new(68))

injected = users.inject({}) { |result, u| result.merge({ u.id => u }) }
p injected[33] # <struct User id=33>

# ここまでやっといてなんだけど、group byで行けるんじゃね
# {2=>[#<struct User id=2>], 33=>[#<struct User id=33>], 45=>[#<struct User id=45>], 68=>[#<struct User id=68>]}
grouped = users.group_by(&:id)
p grouped[33].first # と思ったけど、firstがうっとうしい。
p grouped[:unknown] # nil

# 大先生から頂いた書き方。シンプルだが、アロケートが気になるそう
p mapped = users.map{[_1.id, _1]}.to_h
p mapped[:unknown] # nil
