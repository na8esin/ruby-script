require 'zlib'
p Zlib::GzipReader.open('data.csv.gz', &:read)

Zlib::GzipReader.open('hoge.gz') { |gz| gz.read }
