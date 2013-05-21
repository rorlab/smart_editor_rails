require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require
require "smart_editor"

module Dummy
   class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'
    config.time_zone = 'Seoul'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.i18n.default_locale = :ko

    # Rails 4 : Due to a change in Rails that prevents images from being compiled in vendor and lib, 
    # you'll need to add the following line to your application.rb: (by HSCHOI)
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)

    # Enable "Responsive Site View" in Chrome browser, by HSCHOI
    config.action_dispatch.default_headers.clear

  end
end

