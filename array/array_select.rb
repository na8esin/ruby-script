p [1,2,3,4,5].select { |num| num.even? }
p [1,2,3,4,5].select { |num| num.even? }.first
p [1,2,3,4,5].select { |num| num == 2 }
p [1,2,3,4,5].select { |num| num == 2 }.first
p '存在しない場合'
p [1,2,3,4,5].select { |num| num == 6 }.first

