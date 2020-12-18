require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MoneyMattersBackend
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.generators.serializers = "true"
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', headers: :any, methods: [:get, :post, :options, :delete, :patch]
      end
    end
  end
end
