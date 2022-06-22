require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Lenguajes1
  class Application < Rails::Application
    config.middleware.insert_before 0, Rack::Cors do
      allow do
       origins '*'
       resource '*', :headers => :any, :methods => :any
      end
    end
  end
end
