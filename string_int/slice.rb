def code_slice(code)
  [code.slice(0, 3), code.slice(3, 3), code.slice(6, 4)].compact.reject(&:empty?)
end

def code_slice_non_reject(code)
  [code.slice(0, 3), code.slice(3, 3), code.slice(6, 4)]
end


[
  "1234567890",
  "ABCDEFGHIJ",
  "123456789",
  "12345678",
  "1234567",
  "123456",
  "123"
].each do |c|
  p code_slice(c)
end
