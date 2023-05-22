def sample
  { success: 1, fail: 2 }
end

success, failure = sample

p success # {:success=>1, :fail=>2}
p failure # nil

success, failure = sample.values

p success # 1
p failure # 2

success, failure = *sample.values

p success # 1
p failure # 2
