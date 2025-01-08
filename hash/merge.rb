h1 = {'1':{quantity:1}}
h2 = {'1':{quantity:2}}
# 上書きができる
p h1.merge(h2) # {:"1"=>{:quantity=>2}}