module Bar
  class << self
    def method1
      p 'hello'
    end
    def method2 ; end
  end
end

Bar.method1