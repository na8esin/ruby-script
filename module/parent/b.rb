require_relative '../parent'

module Parent
  class B
    def run
      Parent.call
    end
  end
end

p Parent::B.new.run
