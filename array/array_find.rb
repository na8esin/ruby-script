p [1,2,3,4,5].find { |num| num.even? } # 2
# 確かにfirstいらんわ

# 見つからない場合はnil
p [1,2,3,4,5].find { |num| num == 6 } # nil
