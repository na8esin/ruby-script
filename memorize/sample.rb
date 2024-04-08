# Dogクラスを定義
Dog = Data.define(:name, :age)

class Sample
  def terry
    # 折り返しても大丈夫
    @terry ||= Dog.new(
      name: "Terry", age: 3
      )
  end
end

p Sample.new.terry
