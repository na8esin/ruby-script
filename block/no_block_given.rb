def some_bock
  yield
end

some_bock

def if_some_bock(boolean)
  if boolean
    yield
  end
end

if_some_bock(true)
if_some_bock(false)