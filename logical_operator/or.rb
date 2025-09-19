def foo(cond:)
  cond or raise StandardError, "Error! cond = #{cond.inspect}"
rescue StandardError => e
  puts e.message
end

# Syntax errorになる
# false || raise StandardError

foo(cond: true)
foo(cond: false)
foo(cond: nil)
