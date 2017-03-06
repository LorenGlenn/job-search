OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, '78t0mqd50yaz2q', '9F2R6MWCqfDEsVnz', skip_jwt: true
end
