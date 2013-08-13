class NotificationsMailer < ActionMailer::Base
  default :from => "no-reply@domain.com"
  default :to => "hasan.iqbal.anik@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "#{message.subject}")
  end
end
