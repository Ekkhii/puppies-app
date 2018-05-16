require 'dotenv-rails'

    Mailjet.configure do |config|

      config.api_key = ENV['CONFIG_MAILJET_API_KEY']

      config.secret_key = ENV['CONFIG_MAILJET_SECRET_KEY']



    end