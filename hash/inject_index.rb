p [{ id: 1 }, { hello: 2 }]
  .map.with_index.inject({}) { |r, (val, idx)|
  r.merge(val)
}