class Hoge
  attr_accessor :id

  def initialize
    yield self
  end

  def return_my_sef
    hello
    Fuga.sample(hoge: self)
  end

  def hello
    puts "hello"
  end
end

class Fuga
  class << self
    def sample(hoge:)
      p hoge.id
    end
  end
end

Hoge.new do |h|
  h.id = 12
end.return_my_sef
