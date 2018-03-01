Apipie.configure do |config|
  config.translate               = false
  config.default_locale          = nil
  config.app_name                = "TesteRuby"
  config.api_base_url            = "/api"
  config.doc_base_url            = "/apipie"
  # where is your API defined?
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/**/*.rb"
end
