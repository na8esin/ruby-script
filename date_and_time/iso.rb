require 'date'

begin
  Date.iso8601("07/03/2026") # invalid date
rescue ArgumentError => e
  p e.backtrace
end

p '---------------------'

Date.strptime("07/03/2026", "%Y-%m-%d") # invalid date (Date::Error)
