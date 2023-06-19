User = Struct.new(:id)

assertions = []
assertions << { user: User.new(2), flag: true, line: __LINE__ }
assertions << { user: User.new(33), flag: true, line: __LINE__ }
assertions << { user: User.new(45), flag: false, line: __LINE__ }
assertions << { user: User.new(68), flag: true, line: __LINE__ }

# injectを使おうと思ったら、rubocopでこっちが候補で出た
ids = assertions.each_with_object([]) do |item, result|
  result.push(item[:user].id) if item[:flag] == true
end

p ids
