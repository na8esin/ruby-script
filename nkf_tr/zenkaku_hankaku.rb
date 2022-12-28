require 'nkf'

# 文字コードの指定がないと、no output encoding given (ArgumentError)
p NKF.nkf('-w -X', 'tablet')

p 'Tablet'.tr('a-zA-Z0-9', 'ａ-ｚＡ-Ｚ０-９')
