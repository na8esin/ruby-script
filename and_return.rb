def sample(arg_quantity, boolean)
  quantity = 1

  # たまたまtrueだからだよね
  quantity += arg_quantity and return quantity if boolean
  arg_quantity
end

p sample(1, true)
p sample(1, false)