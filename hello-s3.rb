require 'aws-sdk'

Aws.config[:credentials] = Aws::Credentials.new()

# list buckets in Amazon S3
s3 = Aws::S3::Client.new
resp = s3.list_buckets
resp.buckets.map(&:name)
