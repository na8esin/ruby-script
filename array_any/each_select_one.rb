require 'active_support/all'

# 今の所正解ver

# こっち側はid重複はないはず、というかその可能性があるなら、uniqとかすればいい
a_users = [{ id: 1 }, { id: 2 }, { id: 9 }, { id: 99 },]

# users.idの値が同じなら、memberedの値も全て同じじゃないといけない
user_groups = [
  { id: 1, 'users' => [{ id: 1 }, { id: 3 }] },
  { id: 2, 'users' => [{ id: 1 }, { id: 2 }] },
  { id: 3, 'users' => [{ id: 2 }, { id: 4 }] },
  { id: 4, 'users' => [{ id: 5 }, { id: 6 }] },
  { id: 4, 'users' => [{ id: 5 }, { id: 1 }] },
]

def sample(a_users:, user_groups:)
  not_hit_users = []

  a_users.each do |a_user|
    p "a_user=#{a_user}"
    # selectはtrueになったものが一つでもあれば、配列ができる
    hit = user_groups.select do |user_group|
      p "    user_group=#{user_group}"
      user_group['users'].one? do |user|
        p "      user=#{user}"
        # 一度でもtrueが入ってる場合は、スキップ。そうしないとfalseで上書きされる
        if user['membered'] == true
          p '      next'
          next
        end

        user['membered'] = a_user[:id] == user[:id]
      end
    end
    not_hit_users.append(a_user) if hit.empty?
  end

  user_groups.append({id: nil, users: not_hit_users })
end

pp sample(a_users:, user_groups:)

# 元の配列って変更されてる？ -> 変更されてる
# pp user_groups
