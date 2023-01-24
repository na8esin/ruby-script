def sample(trainer)
  return nil if trainer.nil?
end

def sample2(trainer)
  trainer.nil? || return
end

def sample3(programs)
  return nil if programs.nil?
  programs
end

def sample4(programs)
  return if programs.nil?
  programs
end

p sample(nil)
p sample2(nil)
p '------------'
p sample3(nil)
p sample3({hello: 'world'})
p sample4(nil)
p sample4({hello: 'world'})