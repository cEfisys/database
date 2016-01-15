OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '933456580065400', '18e7e7f869abffe3db682c2c1652c53f', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end