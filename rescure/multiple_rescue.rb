class MultipleRescue
  class AError < StandardError; end
  class BError < StandardError; end

  def self.kicker(value)
    case value
    when 1
      raise AError, "AError occurred"
    when 2
      raise BError, "BError occurred"
    else
      "No error"
    end
  end
end

def sample(value)
  p MultipleRescue.kicker(value)
rescue MultipleRescue::AError,
  MultipleRescue::BError => e
  p "Rescued AError or BError: #{e.message}"
end

sample(1)
sample(2)
sample(3)
