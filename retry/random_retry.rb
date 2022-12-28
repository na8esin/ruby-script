try = 0
begin
  # 現実的には特定のエラーになるだろう
  raise StandardError if rand(10) % 2 == 0
rescue
  p try
  try += 1
  p 'try'
  # handles error
  retry if try < 3
  p 'no more retry.'
end
