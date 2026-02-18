begin
  raise StandardError, "An error occurred"
rescue Exception => e
  p "Rescued an exception: #{e.message}"
end
