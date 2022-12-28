h1 = {"have" => "have a","as" => "as a" }
h2 = h1.dup

h2["have"] = "has"
p h2 #=> {"have"=>"has", "as"=>"as a"}
p h1 #=> {"have"=>"have a", "as"=>"as a"}

a = { foo: [1, 2, 3] }

# ハッシュのコピーを作る
b = a.dup

b[:hoge] = :piyo

# ハッシュは別になっているので、aには影響しない
p a[:hoge] # => nil

# a[:foo]の配列は共通のまま
b[:foo] << 4
p a[:foo].length # => 4