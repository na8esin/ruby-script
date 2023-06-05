require 'date'
require 'active_support/all'

Time.zone = 'Asia/Tokyo'

p Time.zone.parse('2023060121')

p Time.zone.parse('2023-06-15 12')
