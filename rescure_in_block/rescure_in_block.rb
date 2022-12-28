def kicker(array)
  vals = array.each_with_object([]).with_index do |(value, result),index|
    p value
    result << value / value
  rescue
    p "Error!"
  end

  vals << 10000
  vals
end

#p kicker([10,20,30])
p kicker([10,0,20,30])