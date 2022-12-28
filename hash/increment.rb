analysis = Hash.new(0)
p analysis

analysis[:success] += 1
p analysis[:fail]
analysis[:fail] += 1
analysis[:fail] += 1


p analysis