p /\W+/.match("ＡＢＣｄｅｆ") #<MatchData "ＡＢＣｄｅｆ">
p /\W+/.match("_") # nil

# 非単語構成文字
p /\W+/.match("?!$%&") #<MatchData "?!$%&">

p /[\W_]+/.match("_") #<MatchData "_">
