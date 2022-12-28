# 未完成

class Base
  def after_perform(*filters, &blk)
    blk
  end
end

class Child < Base
  after_perform do |job|
    p 'hello'
  end

end

Child.new