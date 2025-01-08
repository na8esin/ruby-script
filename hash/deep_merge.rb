require 'active_support/all'

a = { a: { aa: 11, ab: 11 } }
p a.deep_merge({ a: { aa: 99 } }) # {:a=>{:aa=>99, :ab=>11}}
