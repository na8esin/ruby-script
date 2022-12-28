# ActiveSupport::Gzipは常に文字列を利用する
# ただ文字列のやりとりはメモリの面で心配

# あらかじめcsvファイルをgz圧縮したものを用意する
# gzip -c data.csv > data.csv.gz

# GzipReaderを使えば解凍せずに読み込める
require 'zlib'
require 'csv'

def send_mail
  # エラーがある行があるので、s3から取得してください
  p 'send mail'
end

Zlib::GzipReader.open('data.csv.gz') do |gz|
  loop do
    row = CSV.parse(gz.readline).first
    p row
    # 最初の1件にぶつかったらそこで終了
    send_mail and break unless row[1].empty?
  end
rescue EOFError => e
  # 例外発生すれば読み終わったということ
  p e
  break
end
