def implicit_nil(flag)
  if flag
    string_or_nil = 'a'
  end

  p string_or_nil&.center(10)
end

implicit_nil(true)

implicit_nil(false)