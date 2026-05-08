# array of hashだと、eachでハッシュの値を変更できる

a = [{value: 1}, {value: 2}, {value: 3}]

def sample(a)
  a.each do |h|
    h[:value] += 1
    h[:added] = true
  end
end

sample(a)

p a # [{value: 2, added: true}, {value: 3, added: true}, {value: 4, added: true}]