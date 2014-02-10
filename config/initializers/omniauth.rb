OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '468456333277310', '49b27fbcac4ee35b80bcbf2bde58cdb5'
end