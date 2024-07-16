pattern = /\A\d+\z/
# true
p '0'.match?(pattern)
p '1'.match?(pattern)
p '132'.match?(pattern)

# false
p '1.1'.match?(pattern)
p '1a'.match?(pattern)
p 'a1'.match?(pattern)
p '1a1'.match?(pattern)
p 'a'.match?(pattern)
