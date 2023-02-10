class Sample
  def execute
    @some_var = 'hello'
  end
end

s = Sample.new
s.execute
p s.some_var # NoMethodError
