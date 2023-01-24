def compute_thing(thing)
  return unless thing[:foo]
end

def compute_thing2(thing)
  return nil unless thing[:foo]
end

p compute_thing({})
p compute_thing2({})