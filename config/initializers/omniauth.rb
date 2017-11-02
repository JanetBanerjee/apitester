Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '185822845299749', '9dcd5599fff24bacd185296c54f4971a'

  end