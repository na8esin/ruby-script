require 'active_support/all'

# findを使うパターン

a_users = [
  { id: 1 },
  { id: 3 },
  { id: 9 },
]

user_groups = [
  { users: [{id: 1,}, { id: 2}] },
  { users: [{id: 3,}, { id: 2}] },
  { users: [{id: 1,}, { id: 3}] },
]

# 下記2つの配列は、宛先に無いIDを調べるために、ループ内で保存する
not_hits = []

a_users.each do |a_user|
  hit = false
  user_groups.each do |user_group|
    found = user_group[:users].find do |user|
      a_user[:id] == user[:id]
    end
    if found.present?
      found[:membered] = true
      hit = true
      break
    end
  end
  not_hits.append(a_user) unless hit
end

p not_hits # [{:id=>9}]

pp user_groups
# falseが入らないからだめ
# [{:users=>[{:id=>1, :membered=>true}, {:id=>2}]}, {:users=>[{:id=>3, :membered=>true}, {:id=>2}]}, {:users=>[{:id=>1}, {:id=>3}]}]
