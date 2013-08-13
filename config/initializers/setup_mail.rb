ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => "aniks-portfolio",
    :user_name            => "myusername",
    :password             => "mypass",
    :authentication       => :plain,
    :enable_starttls_auto => true
}