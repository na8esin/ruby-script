sample = [
  { id: 1, name: 'Alice' },
  { id: 2, name: 'Bob' },
]

mapped = [sample[0]].map do |item|
  { hoge: 'a', fuga: item[:name] }
end.first

p mapped
