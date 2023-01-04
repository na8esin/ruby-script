require 'date'
require 'active_support/all'

t1 = Time.local('2022', '2', '28')
t2 = Time.local('2022', '4', '1')
t3 = Time.local('2022', '4', '28')

p t1 + 2.months == t2 # false

# 1日に合わせればtrueになる
p t1.beginning_of_month + 2.months == t2 # true

# これもtrueか。へぇ
p t1 + 2.months == t3 # true
