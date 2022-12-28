require 'csv'

s = <<EOS
"1","",""
"2","error","error detail"
EOS

p CSV.parse(s)
