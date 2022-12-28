numbers = [*0..9]
alpha_bigs = [*'A'..'Z']
alpha_smalls = [*'a'..'z']
symbols = "! # $ % & @ + * ?".split(/\s+/)

codes = [numbers, alpha_bigs, alpha_smalls, symbols].shuffle

p codes
# これって必ず4
p codes.length
p 2 % codes.length
p codes[2 % codes.length]
p codes[2 % codes.length].sample(1)
