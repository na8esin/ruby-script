def sample(flg:, time: Time.now)
  p "time: #{time}, flg: #{flg}"
end

# `sample': missing keyword: :flg (ArgumentError)
sample
