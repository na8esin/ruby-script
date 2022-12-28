module Sample
  private

  def secret
    'helow'
  end
end

class SampleClass
  include Sample

  def leak
    "I know #{secret}"
  end
end

p SampleClass.new.leak
