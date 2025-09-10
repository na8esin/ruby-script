# frozen_string_literal: true

require 'aws-sdk-s3'

signer = Aws::S3::Presigner.new
url = signer.presigned_url(
  :get_object,
  bucket: ENV.fetch('BUCKET'),
  key: 'sample.png',
)

p url
