require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RepairTracking
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.i18n.available_locales = [:en, :es, :langs]
    config.i18n.default_locale = :es
    config.autoload_paths += %W(#{config.root}/lib)

    config.generators do |g|
      g.orm :mongoid
    end

    config.mongoid.logger = Logger.new($stdout, :warn)

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
