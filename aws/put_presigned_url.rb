# frozen_string_literal: true

# 実行方法
# AWS_PROFILE=??? BUCKET=??? ruby aws/put_presigned_url.rb

require 'aws-sdk-s3'

signer = Aws::S3::Presigner.new
presigned_url = signer.presigned_url(
  :put_object,
  bucket: ENV.fetch('BUCKET'),
  key: 'sample.png', # ← 省略できない
)

p presigned_url

url = URI.parse(presigned_url)

# 画像をアップロードする
require 'net/http'
require 'uri'
require 'openssl'

File.open("#{__dir__}/sample.png", 'rb') do |f|
  # URLのquery parametersも含めてリクエストURIを作成
  request_uri = url.path + (url.query ? "?#{url.query}" : '')
  req = Net::HTTP::Put.new(request_uri)
  req.body = f.read
  req.content_type = 'image/png'

  # HTTPSの設定
  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_PEER

  res = http.request(req)

  puts "Response code: #{res.code}"
  puts "Response body: #{res.body}" if res.body
end
