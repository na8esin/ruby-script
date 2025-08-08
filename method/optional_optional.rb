def another_error(code: nil)
  error(code:)
end

def another_error2
  error
end

def error(code: nil, message: nil)
  p "error#{code} #{message}"
end


another_error

another_error2("exception")

another_error("exception")
