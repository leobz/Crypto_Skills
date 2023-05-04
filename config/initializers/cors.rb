Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://bitcoinnews.com/'
    resource '*', headers: :any, methods: [:get, :post, :put, :delete]
  end
end