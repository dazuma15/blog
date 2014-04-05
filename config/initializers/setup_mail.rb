ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
:address => "smtp.gmail.com",
:port => 587,
:domain => "gmail.com",
:user_name => "dazuma15",
:password => "damaman1012",
:authentication => "login",
:enable_starttls_auto => true
}