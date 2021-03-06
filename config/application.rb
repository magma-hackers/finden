require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ApiFinden
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Where the I18n library should search for translation files
    I18n.load_path += Dir[Rails.root.join('locale', '*.{rb,yml}')]

    # Whitelist locales available for the application
    I18n.available_locales = [:en, :es]

    # Set default locale to something other than :en
    I18n.default_locale = :es

    config.before_configuration do
      env_file = File.join(Rails.root, 'config', 'local_env.yml')
      YAML.load(File.open(env_file)).each do |key, value|
        ENV[key.to_s] = value
      end if File.exist?(env_file)
    end
    config.assets.fonts = true
    config.assets.paths << Rails.root.join('/app/assets/fonts')
    config.autoload_paths += %W(#{config.root}/app/pdf)
  end
end
