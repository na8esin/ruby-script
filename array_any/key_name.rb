require 'active_support/all'

target = :students
a = { students: 'student_id', teachers: 'teacher_id' }[target]
p a

# exclude?はactive_supportにある
p %i[students teachers].exclude?(target)

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
