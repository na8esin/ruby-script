# frozen_string_literal: true

require 'bigdecimal'

per_day = BigDecimal('4_180.0') / 30
p 4_180 - (per_day * 2)

p 4_180 - ((BigDecimal('4_180.0') / 30) * 2)

# 一時的に変数で受けても結果は同じ

# 参考: どんぶり計算。一円差が出ちゃう
p 4_180 - (per_day.round * 2) # 3902
