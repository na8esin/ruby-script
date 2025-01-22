a = [{id: 1}, {id: 2}, {id: 4}]

ret = a.one? do |e|
 p e
 e[:id] == 2
end

p ret # true

a = [{id: 1}, {id: 2}, {id: 2}, {id: 4}]

ret = a.one? do |e|
 p e
  # trueが2こあった時点でループが終了する
 e[:id] == 2
end

p ret # false
