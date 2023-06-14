def sample
  { success: 1, fail: 2 }
end

sample => { success:, fail: }
p success # 1
p fail    # 2

p '-----------------'

def analysis(result)
  case result
  in success:
    puts 'success'
  in fail:
    puts 'fail'
  in ex:
    puts 'exception'
  else
    puts "Unrecognized structure"
  end
end

analysis({ success: 1 })
analysis({ fail: 1 })
analysis({ ex: 1 })
analysis({})

def analysis2(result)
  case result
  in success:
    puts 'success:'
  in success:, fail:
    puts 'success:, fail:'
  else
    puts "Unrecognized structure"
  end
end

analysis2({ success: 1 }) # => success:
analysis2({ success: 1, fail: 1 }) # => success:

def analysis3(result)
  case result
  in success:, fail:
    puts 'success:, fail:'
  in success:
    puts 'success:'
  else
    puts "Unrecognized structure"
  end
end

analysis3({ success: 1 }) # => success:
analysis3({ success: 1, fail: 1 }) # => success:, fail:
