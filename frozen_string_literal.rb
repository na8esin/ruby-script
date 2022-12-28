a = '1'
b = '1'
p a == b

3.times do
  p 'hello'.object_id # => prints same number
end
p 'world'.frozen? # => true

# こうやって引数で与えることもできる
# ruby --enable=frozen-string-literal frozen_string_literal.rb