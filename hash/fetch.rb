
# warning: One-line pattern matching is experimental, and the behavior may change in future versions of Ruby!
message = 'リクエストパラメータが不正です\nメールアドレスの形式が正しくありません\n'

hoge = { 'リクエストパラメータが不正です\nメールアドレスの形式が正しくありません\n':  'メールアドレスの形式が正しくありません' }.fetch(message, message)
p hoge
