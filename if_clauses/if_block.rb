if true
  a = 1
end
p a # 変数が飛び出す！

lambda {
  b = 2
}.call

p b # 飛び出さない
