require 'date'

# Dateのparse処理を比較する

p Date.parse('2026-07-03') # 2026-07-03
p Date.parse('07/03/2026') # 2026-03-07

p Date.iso8601('2026-07-03') # 2026-07-03。エラーにならない

begin
  Date.iso8601('07/03/2026') # invalid date
rescue ArgumentError => e
  p e.backtrace
end

p '---------------------'

Date.strptime('07/03/2026', '%Y-%m-%d') # invalid date (Date::Error)
