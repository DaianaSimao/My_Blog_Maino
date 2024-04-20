Sidekiq.configure_server do |config|
  config.redis = {url: ENV['REDIS_URL'] || 'redis://localhost:6379'} # Altere as informações de conexão conforme necessário
end

Sidekiq.configure_client do |config|
  config.redis = {url: ENV['REDIS_URL'] || 'redis://localhost:6379'}
end
