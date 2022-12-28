def if_some_bock(boolean)
  if boolean
    some = 9
    yield(some)
  end
end

# p if_some_bock(true)
p if_some_bock(false)
