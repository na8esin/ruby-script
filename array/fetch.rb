sample = [
  { id: 1, name: 'Alice' },
  { id: 2, name: 'Bob' },
]

p sample.fetch(0) do |item|
  "#{item[:id]}: #{item[:name]}"
end
