class Sample

  def now
    @now ||= '今'
  end

  def now_not_set
    @now || '今'
  end

  def hash_now
    {now: @now}
  end
end

s = Sample.new
# 参照系メソッドのフリして、初期値が入っちゃう
p s.now
p s.hash_now
p '----------------------------'
s2 = Sample.new
p s2.now_not_set
p s2.hash_now
