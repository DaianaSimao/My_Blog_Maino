Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://localhost:6379/0' } # Altere as informações de conexão conforme necessário
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://localhost:6379/0' } # Altere as informações de conexão conforme necessário
end
