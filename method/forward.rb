# 引数forwardはキーワード引数とは併用できない
def transform(a:, ...)
  process(...)

  p a
end

def process(b:, c:)
  p "#{b} #{c}"
end
