def foo
  yield(1,2)
end

def kicker(array)
  vals = array.each_with_object([]).with_index do |(value, result),index|
    foo do
      p value
        result << value / value
    rescue StandardError => e
      p "Error!"
      raise e
    end
  end

  vals << 10000
  vals
end

#p kicker([10,20,30])
p kicker([10,0,20,30])

