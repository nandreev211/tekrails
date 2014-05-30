require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module TekRails
  class Application < Rails::Application

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable escaping HTML in JSON.
    config.active_support.escape_html_entities_in_json = true

    config.active_record.whitelist_attributes = true

    # Enable the asset pipeline
    config.assets.enabled = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'

    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
        :authentication => :login,
        :address => "smtp.mailgun.org",
        :port => 587,
        :domain => "tekrails.com",
        :user_name => "postmaster@tekrails.com",
        :password => "tekrails"
    }
  end
end
