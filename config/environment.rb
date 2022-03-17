# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDGRID_LOGIN'],
  :password => ENV['SENDGRID_PWD'],
  :domain => 'https://catshop-io.herokuapp.com/',
  :address => 'in-v3.mailjet.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
