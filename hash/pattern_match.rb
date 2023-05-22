def sample
  { success: 1, fail: 2 }
end

sample => { success:, fail: }
p success # 1
p fail    # 2
