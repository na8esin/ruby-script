
def create_records_in_purchase(res)
  data = res[:data] || {}
  p data[:acs]
end

create_records_in_purchase({})