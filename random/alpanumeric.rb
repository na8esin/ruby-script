# frozen_string_literal: true

require 'securerandom'

# 英語が何文字かまず決める
# 数字が何文字かまず決める
# 12文字だとすると英語が 52文字
# 数字は10文字だから、常に52対10 = 26 : 5
# 5/31 * 12 => およそ 2文字
# なので2:10の割合で生成するか
alphabet = [*'A'..'Z', *'a'..'z'].freeze

random_alphabet = 10.times.map { alphabet[SecureRandom.random_number(52)] }
random_numeric =  2.times.map { SecureRandom.random_number(10) }

p [*random_alphabet, *random_numeric].shuffle.join
