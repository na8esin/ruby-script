# frozen_string_literal: true

require 'bigdecimal'
# https://qiita.com/jnchito/items/d0ef71b25732ad5a881c

# 掛け算
p 1800 * 1.08 # 1944.0000000000002
p 1800 * BigDecimal('1.08')
p '--------'
# 片方がintでもだめ
p 4180 * 0.32 # 1337.6000000000001
p '--------'
# 足し算
p 0.1 + 0.2 # 0.30000000000000004
p 0.1 + BigDecimal('0.2') # 0.3e0。片方がDecならいいのか？たまたまな気がする。
p BigDecimal('0.1') + 0.2 # 0.3e0。たまたまじゃないのか？
p '--------'
p 1 + 0.082345 # 1.0823450000000001

# これならOK
p 1 + BigDecimal(0.082345.to_s) # 0.1082345e1

# 余談だけど、全然ダメパターン
p 1.to_s + 0.082345.to_s # '10.082345'
