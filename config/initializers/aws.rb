require 'aws-sdk-core'

Aws.config.update({
  region: 'us-east-005', # Substitua pela sua região correta
  endpoint: 'https://s3.us-east-005.backblazeb2.com', # Substitua pelo seu endpoint correto
  credentials: Aws::Credentials.new(
    Rails.application.credentials.dig(:aws, :access_key_id), 
    Rails.application.credentials.dig(:aws, :secret_access_key)
  )
})
