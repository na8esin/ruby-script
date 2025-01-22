# anyは本当にnext使える？

a  = [1, 2, 3]
a.any? do |e|
  next if e == 2 # ちゃんとnext、効いてるっぽい

  p e
  false # trueっぽいものを返すだけでもループを抜けちゃう
end
