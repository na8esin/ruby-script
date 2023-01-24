def sample(flag)
  if flag
    return sample2(
      a: 'hello',
      b: 'welcome'
    )
  end
  'thanks'
end

def sample2(a: ,b:)
  "#{a} #{b}"
end

p sample(true)

p sample(false)
