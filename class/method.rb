class Sample
  class << self
    def welcom
      'welcom'
    end
  end

  def hello
    "hello #{self.class.welcom}"
  end
end

p Sample.new.hello # "hello welcom"
