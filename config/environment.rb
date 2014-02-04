# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
SendgridRailsSampleApp::Application.initialize!

# overwrite ActionMailer settings to send through SendGrid servers
ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => '<sendgrid_username>',
  :password       => '<sendgrid_password>',
  :domain         => 'example.com',
  :enable_starttls_auto => true
}
