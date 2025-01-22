# nextってどこまで抜けちゃうの？
#   -> 自分だけしか抜けない

[1,2,3].each do |e|
  ["a", "b", "c"].one? do |u|
    p "#{e}, #{u}"

    if u == "b"
      p 'next'
      next
    end
  end
end
