require 'date'
require 'active_support/all'

# 先月の2日くらいを狙いたい時
p Time.current.prev_month.beginning_of_month.advance(days: 1)
# こっちの方がいいか
p Time.current.prev_month.beginning_of_month.next_day
# うーん、そもそもlocalで指定した方が短い
# まあ、現在Timeをtravel_toしなきゃいけない場合もあるが、
# 引数に入れる場合は、断然こっち
# 年跨ぎとかも意識できるし
Time.zone = 'Asia/Tokyo'
p Time.zone.local(2023, 1, 2)

# beginning_of_dayとか冗長だよね
p Time.current.next_day.beginning_of_day
