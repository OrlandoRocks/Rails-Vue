
Rails.application.credentials.tap do |d|
  d.jwt_secret_key = ENV['JWT_SECRET_KEY']
end

