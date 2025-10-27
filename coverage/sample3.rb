# frozen_string_literal: true

class Sample
  def initialize(a:)
    raise ArgumentError, 'a cannot be nil' if a.nil?

    @a = a
  end

  def sample
    return if @a.nil?

    p @a.to_s
  end
end

Sample.new(a: 42).sample
Sample.new(a: nil).sample rescue nil
