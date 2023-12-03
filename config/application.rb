require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module JobBoard
  class Application < Rails::Application
    # Get environment variables from config/local_env.yml(not to add that file to git).
    config.before_configuration do
      env_file = File.join(Rails.root, 'config', 'local_env.yml')
      YAML.load(File.open(env_file)).each do |key, value|
        ENV[key.to_s] = value
      end if File.exists?(env_file)
    end

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Host
    config.hosts << "localhost"
    config.hosts << "frontend"
    config.hosts << ENV['MY_HOST'] || "crypto-skills.com"
    config.x.app.my_host = ENV['MY_HOST'] || "crypto-skills.com"

    # OpenNode
    config.x.opennode.opennode_url = ENV['OPEN_NODE_URL']
    config.x.opennode.api_key = ENV['API_KEY']

    # Jobs
    config.active_job.queue_adapter = :sidekiq

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")


    ################################### Mail Settings ######################################
    # Devise mailer config
    config.action_mailer.default_url_options = {
      host: ENV['MY_HOST'] || 'localhost',
      port: ENV['MY_HOST'] ? 80 : 3000
    }
    config.action_mailer.perform_caching = false
    config.action_mailer.perform_deliveries = true
    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.default_options = { from: 'no-reply@example.com' }

    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      address:         'smtp.gmail.com',
      port:            587,
      domain:          'example.com',
      user_name:       ENV['MAIL_USERNAME'],
      password:        ENV['MAIL_PASSWORD'],
      authentication:  'plain',
      enable_starttls: true,
      open_timeout:    5,
      read_timeout:    5 }
  end
end
