OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '933456580065400', '18e7e7f869abffe3db682c2c1652c53f', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
  provider :google_oauth2, '704066822016-jiclmi33g3sqv9ibgf8ec193sfn8ajcv.apps.googleusercontent.com', 'QcfyjaeiJudRO4SLUfgfdi5f', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
