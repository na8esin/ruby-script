def credential
  {
    key: 'key1'
  }
end

def main
  { credential: }
end

p main # {:credential=>{:key=>"key1"}}
