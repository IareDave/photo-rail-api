require 'aws-sdk'

Aws.config[:credentials] = Aws::Credentials.new('AKIAJ624PZZTWYLTS2CA', 'sQ1mEFOE92g9oY2xDTN65D7e4f+JVvCuO6giaDzU')

# list buckets in Amazon S3
s3 = Aws::S3::Client.new
resp = s3.list_buckets
resp.buckets.map(&:name)

export AWS_ACCESS_KEY_ID=AKIAJ624PZZTWYLTS2CA
export AWS_SECRET_ACCESS_KEY=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
