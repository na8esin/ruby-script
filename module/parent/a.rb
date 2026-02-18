require_relative '../parent' # railsでは不要

module Parent
  class A
    def run
      Parent.call
    end
  end
end

p Parent::A.new.run
