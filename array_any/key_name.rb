require 'active_support/all'

target = :students
key_map = { students: 'student_id', teachers: 'teacher_id' }

a = key_map[target]
p a

# exclude?はactive_supportにある
p key_map.keys.exclude?(target)

begin
  raise StandardError, 'target must be students or teachers'
rescue StandardError => e
  p e
end

begin
  # ↓はRuntimeErrorだけど、StandardErrorで捕捉できる
  raise 'target must be students or teachers'
rescue  StandardError => e
  p e
end
