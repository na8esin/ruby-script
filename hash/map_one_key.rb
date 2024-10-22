require "json"

p sample = { id:'aaa', json:'{"key": "value"}' }

p(sample.merge({ json: JSON.parse(sample[:json]) }))
