# frozen_string_literal: true

def sample(status: 200)
  raise StandardError, 'An error occurred' if status == 500

  'ok' if status == 200
rescue StandardError => e
  # Handle the exception
  p "Rescued an error: #{e.message}"
ensure
  p 'in ensure'
  'NG' # ensureの戻り値は常に無視される
end

p '-- status: 500 -'
p sample(status: 500) # "Rescued an error: An error occurred"
p '-- status: 404 -'
p sample(status: 404) # nil
p '-- status: 200 -'
p sample(status: 200) # "ok"
