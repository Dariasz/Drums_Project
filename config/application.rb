require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DrumsProject
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.default_locale = :pl

#     AWS::S3::Base.establish_connection!(
#     :access_key_id     => 'Put your Access Key ID here',
#     :secret_access_key => 'Put your Secret Access Key here'
#     )
#
# BUCKET = 's3tutorialmusic'

  end
end
