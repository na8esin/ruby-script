result = []
result.push({ name: 'ラーメン' })

# hashのselectと違って、k,vで受け取れない？
p result.select { |(item)|
  item[:name] == 'ラーメン'
}