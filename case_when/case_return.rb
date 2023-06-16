def main(test)
  case test
  when 1
    return
  when 2
    'welcome'
  else
  end

  'hello'
end

p main(1) # nil
p main(2)
p main(3)