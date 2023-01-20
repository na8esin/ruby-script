require 'date'
require 'active_support/all'

# 2日くらいを狙いたい時
p Time.current.beginning_of_month.advance(days: 1)
