SendGrid Sample App - Ruby on Rails
======================

This git repository helps you to send emails quickly and easily through SendGrid using Ruby on Rails.

Create an SendGrid account at http://sendgrid.com/pricing.html

Clone SendGrid application on your local machine
<pre>
    git clone https://github.com/sendgrid/sendgrid-rails-sample-app.git
</pre>

###Configuration###

Configure `config/environment.rb` file with your information:

Update the *&lt;sendgrid_username&gt;* and *&lt;sendgrid_password&gt;* with your SendGrid credentials.
```ruby
    ActionMailer::Base.smtp_settings = {
      :address        => 'smtp.sendgrid.net',
      :port           => '587',
      :authentication => :plain,
      :user_name      => '<sendgrid_username>',
      :password       => '<sendgrid_password>',
      :domain         => 'example.com',
      :enable_starttls_auto => true
    }
```

Upload your application to your server
