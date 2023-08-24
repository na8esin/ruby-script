# 定数を定義して、その後でrequire先で定数を使うパターン
HOGE = 'welcome'.freeze

require_relative 'ref_constants'
