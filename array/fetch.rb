sample = [
  { id: 1, name: 'Alice' },
  { id: 2, name: 'Bob' },
]

# mapみたいに変更はできない
p sample.fetch_values(0) do |item|
  { hoge_id: item[:id], hoge_name: item[:name] }
end
# [{id: 1, name: "Alice"}]

p sample.fetch(0) do |item|
  { hoge_id: item[:id], hoge_name: item[:name] }
end
