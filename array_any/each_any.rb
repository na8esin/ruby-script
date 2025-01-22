require 'active_support/all'

# any? は今回は、使えないという実験

def sample(a_users:, user_groups:)
  not_hit_users = []

  a_users.each do |a_user|
    p "a_user=#{a_user}"
    hit = user_groups.any? do |user_group|
      user_group['users'].any? do |user|
        p "user=#{user}"
        # 一度でもtrueが入ってる場合は、スキップ
        if user['membered'] == true
          p 'next'
          next
        end

        # ここでtrueを返しちゃうと他のuser_groupが評価されないから、anyは使えない
        user['membered'] = a_user[:id] == user[:id]
      end
    end
    not_hit_users.append(a_user) unless hit
  end

  user_groups.append({id: nil, users: not_hit_users })
end

a_users = [{ id: 1 }, { id: 2 }, { id: 9 },]

# users.idの値が同じなら、memberedの値も全て同じじゃないといけない
user_groups = [
  { id: 1, 'users' => [{ id: 1 }, { id: 3 }] },
  { id: 2, 'users' => [{ id: 1 }, { id: 2 }] },
  { id: 3, 'users' => [{ id: 2 }, { id: 4 }] },
]

pp sample(a_users:, user_groups:)
