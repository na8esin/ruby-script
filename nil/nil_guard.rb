# 三項演算子でnilを確認するのって冗長じゃない？
def nil_guard_ternary_operator
  value = nil
  another_value = 'hello'
  value.nil? ? another_value : value
end

def nil_guard_ternary_operator2
  value = nil
  another_value = 'hello'
  # 「!」はあんまり良くないか
  !value ? another_value : value
end


def nil_guard
  value = nil
  another_value = 'hello'
  # UselessAssignment
  value ||= another_value
end

# hello
p nil_guard_ternary_operator

# hello
p nil_guard_ternary_operator2

# hello
p nil_guard