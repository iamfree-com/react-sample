require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ReactSample
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    #config.browserify_rails.commandline_options = "--transform reactify --extension=\".jsx\""
    config.browserify_rails.commandline_options = "--transform babelify --extension=\".jsx\""
  end
end
