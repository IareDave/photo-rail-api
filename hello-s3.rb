require 'aws-sdk'

Aws.config[:credentials] = Aws::Credentials.new()

# list buckets in Amazon S3
s3 = Aws::S3::Client.new
resp = s3.list_buckets
resp.buckets.map(&:name)

export AWS_ACCESS_KEY_ID=AKIAVOCGRFS7OLYIFME2
export AWS_SECRET_ACCESS_KEY=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
