def sample(a:, b:)
  # インデント同じにしたいけど、↓が発生する
  # Layout/MultilineOperationIndentation
  (a & b) ||
    !a
end

p sample(a: true, b: false)
p sample(a: false, b: false)
p sample(a: false, b: true)
p sample(a: true, b: true)
