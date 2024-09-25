Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*' #will need to change this later
    resource '*', 
      headers: :any, 
      methods: [:get, :post, :patch, :put, :delete, :options, :head],
      expose: ['access-token', 'expiry', 'token-type', 'uid', 'client']
  end
end